<?php
$hostname ="localhost";
$username ="root";
$password ="";
$databasename ="courier";

$mysqli = new mysqli($hostname,$username,$password,$databasename);

if($mysqli->connect_errno){
	print"Failed to connect to the mysql: (".$mysqli->connect_errno.") ".$mysqli->connect_errno;
}
// or die("Database not connected");

echo"hello";
?>