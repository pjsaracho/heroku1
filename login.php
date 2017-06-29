<?php

$message = "";
	session_start();
	if(isset($_SESSION['message'])){
		$message = "<div class='alert alert-success'>".$_SESSION['message']."</div>";
		unset($_SESSION['message']);
	}

	if(isset($_POST['login'])){
		require('connection.php');
		$username = $_POST['username'];
		$password = sha1($_POST['password']);
		$sql = "SELECT * FROM users 
		WHERE username = '$username'
		AND password = '$password'";

		$result = mysqli_query($conn,$sql);
		if(mysqli_num_rows($result)>0){
			while($row = mysqli_fetch_assoc($result)){
				extract($row);
				$_SESSION['message'] = "Login Successful";
				$_SESSION['username'] = $username;
				$_SESSION['role'] = $role;

				echo "login successful";
				header('location:home.php');
			}				
		}
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class='container'>
	<?php echo $message; ?>

	<h1> LOGIN </h1>

	<form method='post' action=''>
		<div class="form-group">
		<input type="text" name="username" placeholder="Username">
		</div>
		<div class="form-group">
		<input type="password" name="password" placeholder="Password">
		</div>
		<div class="form-group">
		<input class="btn btn-success" class="btn btn-default" type="submit" name="login" value="Login"> 
		</div>
	</form>
	</div>
</body>
</html>