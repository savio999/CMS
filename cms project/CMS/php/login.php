<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/css/style.css"/>  
        <script src="../resources/js/scripts.js"></script>
              
    </head>
    <body>
        <?php 
        require_once 'header.php'; 
        require_once 'functions.php';
        ?>
        <form method="post">
        <p class="no-result" style="text-align:center;">Admin Login Page</p>
        <p style="text-align:center;">username:savio</p>
        <p style="text-align:center;">password:savio@123</p>
        <div class="contact-div">
            <div class="contact-field-div" id="msgBox">
                
            </div>
            
            <div class="contact-field-div">
                <input class="contact-field" type="text" name="username" id="username" placeholder="username"/>
            </div>
        
            <div class="contact-field-div">
                <input class="contact-field" type="password" name="password" id="password" placeholder="password"/>
            </div>
        
            <div class="contact-field-div">
                <div class="view-more" style="text-align:center;">
                <a href="javascript:void(0);"  onclick="validateLogin();" type="button" class="view-btn"  style="margin-left:auto;margin-right:auto;">Login</a>
            </div>
            </div>
            
        </div>
        </form>
        <?php require_once 'footer.php'?>
    </body>
</html>
