<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CMS::View Post</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/css/style.css"/>  
              
    </head>
    <body>
        <?php 
        require_once 'header.php'; 
        require_once 'functions.php';
        
        $postID=$_GET["postID"];
        
        $post=fetchPostContent($postID);
        
        echo $post;
        ?>
    </body>
</html>
