<?php 

		if(isset($_POST['submit']))
		{
			$u=$_POST['username'];
			$op=$_POST['opassword'];
			$np=$_POST['npassword'];

			include("connect.php");
			$sql_connect=mysqli_connect($host,$user,$pass) or die("cannot connect to database.please try after sometime");
			mysqli_select_db($db,$sql_connect) or die("cannot find database");
			
			$select_user_query="SELECT * FROM `admin` WHERE `username`='$u' AND `password`='$op'";
			$select_user=mysqli_query($select_user_query);
		//	$row=mysqli_fetch_row($select_user);
		//	$correctpass=$u['password'];
			$change=mysqli_query("UPDATE `courier`.`admin` SET `password`='$np' WHERE `admin`.`username`='$u'");
			session_start();
			$_SESSION['change']=1;
			header("Location: admin.php#contact");
			
					
					
	}

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SidEx - Courier Management System</title>
</head>

<body>
</body>
</html>
