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

if(isset($_POST['rate']))
		{
			$wt=$_POST['wt'];
			$num=$_POST['num'];
			if ($_POST['mode']=="air")
				$mode=100;
			else if ($_POST['mode']=="surface") $mode=70;
			else $mode=50;
			
			$rate=$wt*$num*$mode;

			echo "Rate = " . $rate;
			include 'addc.php';
		
			mysqli_close($con);
		}
?>

<footer class="footer">
<p> Copyright © 2017 Saaku Services, Inc. All rights reserved worldwide </p>
</footer>

</body>

</html>