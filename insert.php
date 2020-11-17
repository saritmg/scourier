<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saaku Courier Management System</title>
</head>

<body>
<?php

$con=mysqli_connect("localhost","root","");
if(!$con)
{
die('could not connect'.mysqli_error());
}

mysqli_select_db("courier",$con);
if ($_POST['type']=="client")
$tablechoice="client";
else $tablechoice="employee";

$sql="INSERT INTO $tablechoice(username, password,name,emailid,mobile,address,city,country) VALUES ('$_POST[username]','$_POST[password]','$_POST[fname]','$_POST[email]','$_POST[mobile]','$_POST[address]','$_POST[city]','$_POST[country]')";
$result=mysqli_query($sql,$con);

if(!$result)
{
echo "Incorrect details !" . "</br>";
include 'register.php';
}
else {echo $tablechoice. " added !";}
mysqli_close($con);
include 'index.php';
?>

</body>
</html>
