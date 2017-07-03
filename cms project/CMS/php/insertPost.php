<?php
require_once "functions.php";

$title=$_POST["title"];
$body=$_POST["body"];
$conn=setConnection();
try{
$stat=$conn->prepare("insert into posts(post_title,post_body,date)values(?,?,now())");
$stat->execute(array($title,$body));
echo "1";
}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
?>
