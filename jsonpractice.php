<?php

if(isset($_POST['delete'])){

	$string = file_get_contents("users.json");
	if($string)
		$array = json_decode($string, true);
	//print_r($array);
	$username = $_POST['username'];
	$password = $_POST['password'];
	$index;

	foreach ($array as $key => $value) {
		if($value['username'] == $username 
			&& $value['password'] == $old_password){
			
			$index = $key;
			
		}
	}

	// unset($array[$index]);

	// $fp = fopen('users.json', 'w');
	// fwrite($fp, json_encode($array, JSON_PRETTY_PRINT));
	// fclose($fp);
}



?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<h3>Delete Account:</h3>
<form method='POST' action=''>
	username: <input type="text" name="username"><br>
	password: <input type="password" name="old_password"><br>
	<input type="submit" name="delete" value="Delete Account">
</form>

</body>
</html>