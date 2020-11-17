
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Saaku Courier Management System</title>
</head>

<body>
<?php
if(isset($_POST['submit']))
{
	$u=$_POST['username'];
	$p=$_POST['password'];

	include("connect.php");
	$sqli_connect=mysqli_connect($host,$user,$pass) or die("cannot connect to database.please try after sometime");
	mysqli_select_db($db,$sqli_connect) or die("cannot find database");
	
	switch($_POST['type'])
	{
		case "client":
					$select_user_query="SELECT * FROM `client` WHERE `username`='$u' AND `password`='$p'";
					$select_user=mysqli_query($select_user_query);
					if(mysqli_num_rows($select_user)==1)
					{
						include 'client.php';
						//session_start();
						$_SESSION['type']="client";
						$_SESSION['username']=$u;
						//header('Location: client.php?name='.$u);
					}
					else
					{
						echo "Invalid Username and Password !!";
						unset($_POST['submit']);
						$error_login=1;
						include 'index.php';
					}
					
					break;
		case "admin":
					$select_user_query="SELECT * FROM `admin` WHERE `username`='$u' AND `password`='$p'";
					$select_user=mysqli_query($select_user_query);
					if(mysqli_num_rows($select_user)==1)
					{
						include 'admin.php';
						//session_start();
						$_SESSION['type']="admin";
						$_SESSION['username']=$u;
						//header('Location: client.php?name='.$u);
					}
					else
					{
						echo "Invalid Username and Password !!";
						unset($_POST['submit']);
						$error_login=1;
						include 'index.php';
					}
					break;
		case "employee":
					$select_user_query="SELECT * FROM `employee` WHERE `username`='$u' AND `password`='$p'";
					$select_user=mysqli_query($select_user_query);
					if(mysqli_num_rows($select_user)==1)
					
					{
						include 'employee.php';
						//session_start();
						$_SESSION['type']="employee";
						$_SESSION['username']=$u;
						//header('Location: client.php?name='.$u);
					}
					else
					{
						echo "Invalid Username and Password !!";
						unset($_POST['submit']);
						$error_login=1;
						include 'index.php';
					}
					break;
	}
}

	
?>

</body>
</html>