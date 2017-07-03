<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CMS::Contact</title>
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
        <p class="no-result" style="text-align:center;">Contact Us Form</p>
        <div class="contact-div">
            <div class="contact-field-div" id="msgBox">
                
            </div>
            
            <div class="contact-field-div">
                <input class="contact-field" type="text" name="contName" id="contName" placeholder="Enter your name"/>
            </div>
        
            <div class="contact-field-div">
                <input class="contact-field" type="email" name="contEmail" id="contEmail" placeholder="Enter your email"/>
            </div>
        
            <div class="contact-field-div">
                <textarea id="contmsg"  name="contmsg"  class="contact-field" style="height:200px;" placeholder="Enter your message"></textarea>
            </div>
        
            <div class="contact-field-div">
                <div class="view-more" style="text-align:center;">
                <a href="javascript:void(0);"  onclick="validateContact();" type="button" class="view-btn"  style="margin-left:auto;margin-right:auto;">send</a>
            </div>
            </div>
            
        </div>
        </form>
        <?php require_once 'footer.php'?>
    </body>
</html>
