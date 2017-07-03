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
              
    </head>
    <body>
        <?php 
        require_once 'header.php'; 
        echo getPostsList();
        require_once 'footer.php'?>