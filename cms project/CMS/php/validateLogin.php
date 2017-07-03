<?php
require_once "functions.php";

$username=$_POST["username"];
$password=$_POST["password"];
$password= md5($password);


$conn=setConnection();
try{
$stat=$conn->prepare("select * from users where username=? and password=?");
$stat->execute(array($username,$password));
$result=$stat->fetch(PDO::FETCH_ASSOC);
$count=0;
if($result["userid"]>0)
{
   $count=1;   
   session_start();
   $_SESSION["userid"]=$result["userid"];
   $_SESSION["isadmin"]=$result["isadmin"];
}
echo $count;
}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
?>
