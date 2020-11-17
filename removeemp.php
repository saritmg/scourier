

<!DOCTYPE html >
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
			
			
			$emp=$_POST['emp'];			
			$sql="DELETE FROM `courier`.`employee` WHERE `employee`.`username`='$emp'";	
			
			$result=mysqli_query($sql,$con);
			
			if(!$result)
			{
			echo "Incorrect details !" . "</br>";
			include 'admin.php';
			}
			else {
			

			 include("admin.php");}
        ?>
</body>
</html>