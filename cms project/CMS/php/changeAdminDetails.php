<?php
require_once "functions.php";

session_start();

$username=$_POST["username"];
$password=$_POST["password"];
$password= md5($password);
$admin=1;
$userid;
if(isset($_SESSION["userid"]))
{
    $userid=$_SESSION["userid"];
}

$conn=setConnection();
try{
$stat=$conn->prepare("update users set username=?,password=? where userid=?");
$stat->execute(array($username,$password,$userid));
echo "1";
}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
?>
