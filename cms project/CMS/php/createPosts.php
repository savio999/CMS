<?php
require "functions.php";

validateUserAdmin();

?>
    <head>
        <meta charset="UTF-8">
        <title>CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/css/style.css"/>  
        <script src="../resources/js/scripts.js"></script>
          <script src="../resources/ckeditor/ckeditor.js"></script>     
    </head>
    <body>
        <?php 
        require_once 'header.php'; ?>
         <form method="post">
        <p class="no-result" style="text-align:center;">Create Posts</p>
        <div class="post-div">
            <div class="contact-field-div" id="msgPBox">
                
            </div>
            
            <div class="contact-field-div">
                <input class="post-field" type="text" name="post-title" id="post-title" placeholder="Enter post title"/>
            </div>
        
            <div class="contact-field-div">
                <textarea id="postbody"  name="postbody"  class="contact-field" style="height:200px;" placeholder="Enter your message"></textarea>
            </div>
        
            <div class="contact-field-div">
                <div class="view-more" style="text-align:center;">
                <a href="javascript:void(0);"  onclick="validatePost();" type="button" class="view-btn"  style="margin-left:auto;margin-right:auto;">post</a>
            </div>
            </div>
            
        </div>
        
        <script>
	   CKEDITOR.replace( 'postbody');
        </script>
        
        </form>
        <?php require_once 'footer.php'?>

