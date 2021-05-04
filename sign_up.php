<?php
require("connection.php");

if(isset($_POST['register'])){
$username = mysqli_real_escape_string($conn,strip_tags($_POST['username']));
$email = mysqli_real_escape_string($conn,strip_tags($_POST['reg_email']));
$password = mysqli_real_escape_string($conn,strip_tags($_POST['reg_pass']));
$conf_pass = mysqli_real_escape_string($conn,strip_tags($_POST['conf_pass']));		

	if($password!=$conf_pass){ ?>
		<script>
		window.alert("Password does not match. Try again");
		window.location="index.html";
		</script>
		
	<?php } else{ 

	$ins_sql =  "INSERT INTO users_details (username, email, password) VALUES ('$username','$email','$password')"; 
	if(mysqli_query($conn,$ins_sql)){?>
		<script>
		window.alert("You have been registered. Login to continue");
		window.location="index.php";
		</script>
	<?php } else { ?>
		<script>
			window.alert("Server Error. Contact Brindex Admin");
			window.location="index.php";
		</script>
	<?php }
	 }
}

?>