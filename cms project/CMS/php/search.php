<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>CMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/css/style.css"/>                 
    </head>
    <body>
        <?php 
        require_once 'header.php'; 
        require_once 'functions.php';
        
        $term=$_POST["term"];
        $posts=findSearchResults($term);
        
        echo $posts;
        
       
        ?>
    </body>
</html>
