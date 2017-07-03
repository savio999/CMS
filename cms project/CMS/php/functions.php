<?php

  function setConnection()
    { $conn;
         try{
         $conn=new PDO("mysql:dbname=cms;host:localhost","root","root");
         $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
         return $conn;
         }catch(PDOException $e)
         {
             $e->getMessage();
         }
         return $conn;
     }

function fetchPosts(){
$conn=setConnection();
$result=getPosts($conn);
$postContent="";

foreach($result as $row)
{
    $date=$row["date"];
   $dateArr=explode("-",$date); 
   $year=$dateArr[0];
   $month=$dateArr[1];
   $monthStr=getMonth($month);
   $day=$dateArr[2];
   $bodyCont=$row["post_body"];
   $bodyCont= strip_tags($bodyCont);

   if(strlen($bodyCont)>=250)
   {
       
       $bodyCont=substr($bodyCont,0,249);
       $bodyCont.="...";
   }
   
   $postContent.="<div class=\"blog-post\">
            <div class=\"date\">
                <div class=\"day\">".$day.
                "</div>
                <div class=\"month\">".$monthStr.
                "</div>
                <div class=\"year\">".
                    $year.
                "</div>
            </div>
            <div class=\"post-summary\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" class=\"index-title\"><p>".$row["post_title"]."</p></a>
                <div class=\"index-summary\">".$bodyCont."</div>
            </div>
            <div class=\"view-more\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" type=\"button\" class=\"view-btn\">view more</a>
            </div>
        </div>";
               
}
close($conn);
return $postContent;
}


function fetchPostContent($postID){
$conn=setConnection();
$row= getPostByID($conn,$postID);
$postContent="";

    $date=$row["date"];
   $dateArr=explode("-",$date); 
   $year=$dateArr[0];
   $month=$dateArr[1];
   $monthStr=getMonth($month);
   $day=$dateArr[2];
   
   $postContent.="<div class=\"blog-detail-post\">
            <div class=\"date\">
                <div class=\"day\">".$day.
                "</div>
                <div class=\"month\">".$monthStr.
                "</div>
                <div class=\"year\">".
                    $year.
                "</div>
            </div>
            <div class=\"post-detail-summary\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" class=\"index-title\"><p>".$row["post_title"]."</p></a>
                <div class=\"index-summary\">".$row["post_body"]."</div>
            </div>               
        </div>";
               

close($conn);
return $postContent;
}


function getPostByID($conn,$postID)
{
    $result;
    try{
     $stmt=$conn->prepare("select * from posts where post_id = ?");
     $stmt->execute(array($postID));
     $result=$stmt->fetch(PDO::FETCH_ASSOC);
    }catch(Exception $e)
    {
        $e->getMessage();
    }
    return $result;
}


function getPosts($conn)
{
    $returnQuery;
    try{
     $returnQuery=$conn->query("select * from posts order by post_id desc");
    }
    catch(PDOException $e){
       $e->getMessage(); 
    }
    return $returnQuery;
}


     
    function close($conn)
     {
        try{
         unset($conn);
         }catch(PDOException $e)
         {
             $e->getMessage();
         }
     }
     
     function getMonth($m)
     {
         $month="";
         switch($m){
         case 1:
             $month="JAN";
             break;
         case 2:
             $month="FEB";
             break;
         case 3:
             $month="MAR";
             break;
         case 4:
             $month="APR";
             break;
         case 5:
             $month="MAY";
             break;
         case 6:
             $month="JUN";
             break;
         case 7:
             $month="JUL";
             break;
         case 8:
             $month="AUG";
             break;
         case 9:
             $month="SEP";
             break;
         case 10:
             $month="OCT";
             break;
         case 11:
             $month="NOV";
             break;
         case 12:
             $month="DEC";
             break;
         }
         return $month;
     }
     
     function getSearchResults($term)
     {
         $conn=setConnection();
$result=getPosts($conn);
$postContent="";

foreach($result as $row)
{
    $date=$row["date"];
   $dateArr=explode("-",$date); 
   $year=$dateArr[0];
   $month=$dateArr[1];
   $monthStr=getMonth($month);
   $day=$dateArr[2];
   $bodyCont="";
   $bodyCont=$row["post_body"];
   
   $bodyCont=strip_tags($bodyCont);
   
   
   if(strlen($bodyCont)>=250)
   {
       
       $bodyCont=substr($bodyCont,0,249);
       $bodyCont.="...";
   }
   
   $postContent.="<div class=\"blog-post\">
            <div class=\"date\">
                <div class=\"day\">".$day.
                "</div>
                <div class=\"month\">".$monthStr.
                "</div>
                <div class=\"year\">".
                    $year.
                "</div>
            </div>
            <div class=\"post-summary\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" class=\"index-title\"><p>".$row["post_title"]."</p></a>
                <div class=\"index-summary\">".$bodyCont."</div>
            </div>
            <div class=\"view-more\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" type=\"button\" class=\"view-btn\">view more</a>
            </div>
        </div>";
               
}
close($conn);
return $postContent;
}


function findSearchResults($term){
$conn=setConnection();
$result= getPostsByTerms($conn,$term);
$postContent="";
$count=0;

foreach($result as $row){
    $date=$row["date"];
   $dateArr=explode("-",$date); 
   $year=$dateArr[0];
   $month=$dateArr[1];
   $monthStr=getMonth($month);
   $day=$dateArr[2];
   $bodyCont=$row["post_body"];
   $bodyCont=strip_tags($bodyCont);
   
   if(strlen($bodyCont)>=250)
   {
       
       $bodyCont=substr($bodyCont,0,249);
       $bodyCont.="...";
   }
   
   $postContent.="<div class=\"blog-post\">
            <div class=\"date\">
                <div class=\"day\">".$day.
                "</div>
                <div class=\"month\">".$monthStr.
                "</div>
                <div class=\"year\">".
                    $year.
                "</div>
            </div>
            <div class=\"post-summary\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" class=\"index-title\"><p>".$row["post_title"]."</p></a>
                <div class=\"index-summary\">".$bodyCont."</div>
            </div>
            <div class=\"view-more\">
                <a href=\"/CMS/php/viewPost.php?postID=".$row["post_id"]."\" type=\"button\" class=\"view-btn\">view more</a>
            </div>
        </div>";
   $count++;
  }
          close($conn);
          if($count==0)
          {
              $postContent="<p class=\"no-result\" style=\"text-align:center;height:500px;\">No results found</p>";
          }
          else{
              $postContent="<p class=\"no-result\" style=\"text-align:center;\">Search results for ".$term."</p>".$postContent;
          }
          return $postContent;
     }


function getPostsByTerms($conn,$term)
{
     $resultQuery=null;
    try{
     $stmt=$conn->prepare("select * from posts where post_title like ?");
     $stmt->execute(array('%'.$term.'%'));
     $resultQuery=$stmt->fetchAll(PDO::FETCH_ASSOC);
     
    }
    catch(PDOException $e){
       $e->getMessage(); 
    }
    return $resultQuery;
}

function validateUserAdmin()
{
    session_start();

$userid=0;
$isadmin=0;
if((isset($_SESSION["userid"])) && (isset($_SESSION["isadmin"])))
{
    $userid=$_SESSION["userid"];
    $isadmin=$_SESSION["isadmin"];
    
    if($userid>0 && $isadmin==0)
    {
       
        header("location:login.php");
    }
}
else{
   
   header("location:login.php");
}
}

function viewContacts()
{
    $resultQuery=null;
    try{
     $conn=setConnection();
     $stmt=$conn->prepare("select * from contact_details order by contact_id desc");
     $stmt->execute();
     $resultQuery=$stmt->fetchAll(PDO::FETCH_ASSOC);
     
    }
    catch(PDOException $e){
       $e->getMessage(); 
    }
    return $resultQuery;
    
    
}

function findContactResults(){
$conn=setConnection();
$result= viewContacts();
$postContent="<table id=\"contactTable\"><tr>"
         . "<th>New</th>"
           . "<th>Name</th>"
           . "<th>Email</th>"
           ."<th>View</th>"           
           . "</tr>";

$count=0;

foreach($result as $row){
    $status=$row["status"];
    $statusmsg="";
    if($status==0)
    {
        $statusmsg="new";
       $postContent.= "<tr style=\"color:red\">";
    }
    else{
        $statusmsg="";
         $postContent.= "<tr>";
    }
            
            $postContent.= "<td>".$statusmsg."</td>".
                    "<td>".$row["contact_name"]."</td>"
           . "<td>".$row["contact_email"]."</td>"
           ."<td><a href=\"contactDetails.php?contactID=".$row["contact_id"]."\">View</a></td>"           
           . "</tr>";
    $count++;
  
  }
  
  
  
   
          close($conn);
          if($count==0)
          {
              $postContent="<p class=\"no-result\" style=\"text-align:center;height:500px;\">No contact messages found</p>";
          }
          else{
              $postContent.="</table>";
          }
         
          return $postContent;
     }
     
function getContactDetailsDB($contactID,$conn)
{
    $result;
    try{
     $stmt=$conn->prepare("select * from contact_details where contact_id = ?");
     $stmt->execute(array($contactID));
     $result=$stmt->fetch(PDO::FETCH_ASSOC);
    }catch(Exception $e)
    {
        $e->getMessage();
    }
    return $result;
}     

function fetchContactDetails($contactID){
$conn=setConnection();
$row= getContactDetailsDB($contactID,$conn);
$contactContent="<div id=\"contactDEtail\">"
        . "<div style=\"margin:10px;\"><b>Name: </b>".$row["contact_name"]."</div>"
        . "<div style=\"margin:10px;\"><b>Email: </b>".$row["contact_email"]."</div>"
        . "<div style=\"margin:10px;\"><b>Message: </b>".$row["message"]."</div>"
        . "</div>";
               

close($conn);
makeRead($contactID);
return $contactContent;
}

function makeRead($contactID)
{
    $conn=setConnection();
    $status=1;
try{
$stat=$conn->prepare("update contact_details set status=? where contact_id=?");
$stat->execute(array($status,$contactID));

}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
}



function getPostsList(){
$conn=setConnection();
$result= fetchPostList();
$postContent="<table id=\"contactTable\"><tr>"
         . "<th>Title</th>"
           . "<th>Edit</th>"
           . "<th>Delete</th>"
           . "</tr>";

$count=0;

foreach($result as $row){
    $postID=$row["post_id"];
    $postContent.= "<tr id=\"p".$postID."\">";
   
            
            $postContent.= "<td>".$row["post_title"]."</td>".
                    "<td><a href=\"#\">Edit</a></td>".
          "<td><a href=\"javascript:void(0);\" onclick=\"deletePost(".$postID.",p".$postID.")\">Delete</a></td>"           
           . "</tr>";
    $count++;
  
  }  
          close($conn);
          if($count==0)
          {
              $postContent="<p class=\"no-result\" style=\"text-align:center;height:500px;\">No posts found</p>";
          }
          else{
              $postContent.="</table>";
          }
         
          return $postContent;
     }
     
     
function fetchPostList()
{
    $resultQuery=null;
    try{
     $conn=setConnection();
     $stmt=$conn->prepare("select * from posts order by post_id desc");
     $stmt->execute();
     $resultQuery=$stmt->fetchAll(PDO::FETCH_ASSOC);
     
    }
    catch(PDOException $e){
       $e->getMessage(); 
    }
    return $resultQuery;
    
    
}

?>