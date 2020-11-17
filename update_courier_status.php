<?php 
print"Status Changed !!";
		if(isset($_POST['update']))
		{
			$cid=$_POST['cid'];
			$status=$_POST['status'];
			

			include("connect.php");
			$sql_connect=mysqli_connect($host,$user,$pass) or die("cannot connect to database.please try after sometime");
			mysqli_select_db($db,$sql_connect) or die("cannot find database");
			
			$select_user_query="SELECT * FROM `courier_table` WHERE `cid`='$cid'";
			$select_user=mysqli_query($select_user_query);
		//	$row=mysqli_fetch_row($select_user);
		//	$correctpass=$u['password'];
			$change=mysqli_query("UPDATE `courier`.`courier_table` SET `status`='$status' WHERE `courier_table`.`cid`='$cid'");
			//session_start();
			//$_SESSION['change']=1;
			include("employee.php");
			echo "Status Changed !!";
			
					
					
	}

?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saaku Courier Management System</title>
</head>

<body>
</body>
</html>