<?php
require_once "functions.php";

$id=$_POST["postID"];
$conn=setConnection();
try{
$stat=$conn->prepare("delete from posts where post_id=?");
$stat->execute(array($id));
echo "1";
}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
?>