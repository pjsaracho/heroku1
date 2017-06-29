<?php

require('connection.php');

if(isset($_POST['submit'])){
	$category = $_POST['category'];
}

$sql = "SELECT DISTINCT category FROM items";
$result = mysqli_query($conn,$sql);

echo "<form method='post'>";
echo "<select name='category'>";
while($row = mysqli_fetch_assoc($result)){
	echo "<option>".$row['category']."</option>";
}
echo "<input type='submit' name='submit'>";
echo "</select></form>";

$sql = "SELECT * FROM items WHERE category = '$category'";
$result = mysqli_query($conn,$sql);

while($row = mysqli_fetch_assoc($result)){
	$name = $row['name'];
	$image = $row['image'];

	echo "<img src='$image'><br>";
	echo $name."<br>";
}

?>

<!-- <select>
	<option></option>
</select> -->

