function validateContact()
{
    var name=document.getElementById("contName").value;
    var email=document.getElementById("contEmail").value;
    var msg=document.getElementById("contmsg").value;
    var hasError=false;
    var errorMsg="";
    if(name==""|| isNotName(name)||name.length<2)
    {
        hasError=true;
        errorMsg="Enter valid name<br/>";
    }
    if(email==""||isNotEmail(email))
    {
        hasError=true;
        errorMsg+="Enter valid email<br/>";
    }
    if(msg=="")
    {
         hasError=true;
        errorMsg+="Enter msg";
    }
    
    if(hasError)
    {
        document.getElementById("msgBox").innerHTML=errorMsg;
        return false;
    }
    else{
        document.getElementById("msgBox").innerHTML="please wait..."
        var http= new XMLHttpRequest();
        var url="contactInsert.php";
        var params="name="+name+"&email="+email+"&msg="+msg;
        http.open("POST",url,true);
        http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        http.onreadystatechange=function()
        {
            if((http.readyState==4) && (http.status==200))
            {
                document.getElementById("msgBox").innerHTML="Your message has been sent successfully";
                msg="";email="";name="";
            }
        }
        http.send(params);
    }
}

function isNotName(text)
{
    var pattern=/[^A-Za-z\'\- ]/g;
    var result=false;
    if(pattern.test(text))
    {
        result=true;
    }
    
    return result;
}

function isNotEmail(email)
{
    var pattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;
     var result=true;;
    if(pattern.test(email))
    {
        result=false;
    }
    
    return result;
}

function validateLogin()
{
    var username=document.getElementById("username").value;
    var password=document.getElementById("password").value;
    var hasError=false;
    var errorMsg="";
    if(username==""||password=="")
    {
        hasError=true;
        errorMsg="Blank username/password";
    }
    if(hasError)
    {
        document.getElementById("msgBox").innerHTML=errorMsg;
        return false;
    }
    else{
        document.getElementById("msgBox").innerHTML="please wait..."
        var http= new XMLHttpRequest();
        var url="validateLogin.php";
        var params="username="+username+"&password="+password;
        http.open("POST",url,true);
        http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        http.onreadystatechange=function()
        {
            if((http.readyState==4) && (http.status==200))
            {
                var loginResult=http.responseText;
                if(loginResult==1)
                {
                    document.getElementById("msgBox").innerHTML="Login successful";
                    username="";password="";
                    window.location.href="../php/userSetting.php";
                }else{
                     document.getElementById("msgBox").innerHTML="Invalid username/password";
                    username="";password="";
                }
            }
        }
        http.send(params);
    }
    
}

function validateUserDetails()
{
    var username=document.getElementById("username").value;
    var password=document.getElementById("password").value;
    var hasError=false;
    var errorMsg="";
    if(username==""||password=="")
    {
        hasError=true;
        errorMsg="Blank username/password";
    }
    if(hasError)
    {
        document.getElementById("msgBox").innerHTML=errorMsg;
        return false;
    }
    else{
        document.getElementById("msgBox").innerHTML="please wait..."
        var http= new XMLHttpRequest();
        var url="changeAdminDetails.php";
        var params="username="+username+"&password="+password;
        http.open("POST",url,true);
        http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        http.onreadystatechange=function()
        {
            if((http.readyState==4) && (http.status==200))
            {
                var loginResult=http.responseText;
                if(loginResult==1)
                {
                    document.getElementById("msgBox").innerHTML="username and/or password change successful";
                    username="";password="";
                    
                }else{
                    document.getElementById("msgBox").innerHTML="username and/or password change failed";
                    username="";password="";
                }
            }
        }
        http.send(params);
    }
    
}

function validatePost()
{
     var posttitle=document.getElementById("post-title").value;
    var postbody=CKEDITOR.instances.postbody.getData();
    var hasError=false;
    var errorMsg="";
    if(posttitle==""||postbody=="")
    {
        hasError=true;
        errorMsg="Blank title/body";
    }
    if(hasError)
    {
        document.getElementById("msgPBox").innerHTML=errorMsg;
        return false;
    }
    else{
        document.getElementById("msgPBox").innerHTML="please wait..."
        var http= new XMLHttpRequest();
        var url="insertPost.php";
        postbody=encodeURIComponent(postbody);
        posttitle=encodeURIComponent(posttitle);
        var params="title="+posttitle+"&body="+postbody;
        http.open("POST",url,true);
        http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        http.onreadystatechange=function()
        {
            if((http.readyState==4) && (http.status==200))
            {
                var result=http.responseText;
                
                if(result==1)
                {
                    document.getElementById("msgPBox").innerHTML="Post published successfully";
                    postitle="";postbody="";
                    
                }else{
                    document.getElementById("msgPBox").innerHTML="Some errors occured during publishing";
                   
                }
            }
        }
        http.send(params);
    }
    
}

function deletePost(postID,id)
{
    
        var http= new XMLHttpRequest();
        var url="deletePost.php";
        var params="postID="+postID;
        http.open("POST",url,true);
        http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        http.onreadystatechange=function()
        {
            if((http.readyState==4) && (http.status==200))
            {
                var result=http.responseText;
                if(result==1)
                {
                    alert("Post deleted");
                    id.parentNode.removeChild(id);
                    
                }else{
                   alert("Post not deleted");
                   
                }
            }
        }
        http.send(params);
}




