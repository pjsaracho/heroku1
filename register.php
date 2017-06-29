<?php

require 'connection.php';

if(isset($_POST['register'])){
	$username = $_POST['username'];
	$password = $_POST['password'];
	$pw2 = $_POST['pw2'];

	if($password == $pw2){
		$password = sha1($password);

		$sql = "INSERT INTO users 
		(username,password,role) 
		VALUES 
		('$username','$password','regular')";
		mysqli_query($conn,$sql);

		echo "Registered successfully.";
	} else {
		echo "Passwords did not match.";
	}
}




?>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class='container'>
		<h1> REGISTER </h1>

		<form method='post' action=''>
			<div class="form-group">
				<input type="text" name="username" placeholder="Username">
			</div>
			<div class="form-group">
				<input type="password" name="password" placeholder="Password">
			</div>
			<div class="form-group">
				<input type="password" name="pw2" placeholder="Confirm Password">
			</div>
			<div class="form-group">
				<input class="btn btn-success" class="btn btn-default" type="submit" name="register" value="Register"> 
			</div>
		</form>
	</div>
</body>
</html>