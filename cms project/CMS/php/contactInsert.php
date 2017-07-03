<?php
require_once "functions.php";

$name=$_POST["name"];
$email=$_POST["email"];
$msg=$_POST["msg"];


$conn=setConnection();

try{
$stat=$conn->prepare("insert into contact_details(contact_name,contact_email,message)values(?,?,?)");
$stat->execute(array($name,$email,$msg));
}catch(Exception $e)
{
    $e->getMessage();
}
close($conn);
?>