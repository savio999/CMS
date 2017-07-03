<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="resources/css/style.css"/>                 
    </head>
    <body>
        <?php 
        require_once 'php/header.php'; 
        require_once 'php/functions.php';
        
        $posts=fetchPosts();
        
        echo $posts;
        
        require_once 'php/footer.php';
        ?>
    </body>
</html>
