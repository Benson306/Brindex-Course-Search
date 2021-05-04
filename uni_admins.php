<!DOCTYPE html>
<html>
<head>
<?php 
require("connection.php");
?>

	<title>Course Search</title>

<!-- bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- icons -->
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<!-- End of bootsrap -->
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

<style>
.footer {
  	  position: absolute;
	  left: 0;
	  bottom: -105;
	  width: 100%;
	  background-color:orange;
	  color: white;
	  text-align: center;
	}

	
</style>

</head>
                    <!-- navigation bar -->
	<nav class="navbar navbar-default navbar-fixed-top " id="nav1">
		<div class="container-fluid">
				<!-- logo -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#mainNavBar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="index.php" class="navbar-brand">Brindex</a>
				</div>
				<!-- Menu items -->
				<div class="nav navbar-expand-md collapse navbar-collapse" id="mainNavBar">
						<ul class="nav navbar-nav">
								<li class="active"><a href="index.php"><font color="maroon" >Home</font></a></li>
								<li><a href="about.html"><font color="maroon" >About</font></a></li>	
							
						</ul>
						<!-- Right align-->
						
						<ul class="nav navbar-nav navbar-right">
							<li><a href="admin.php" ><div class="btn btn-sm btn-danger"><font color="white" >Log-out</font></div></a></li>
						</ul>
						
				</div>
		</div>
	</nav>


<body>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
<center> 
<h2><font face="pristina"><u>Add/Delete University Users</u></font></h2>
<div class="row">
	<div class="col-md-offset-4">
	<div class="col-md-6">
		<form method="post" role="form">
			<div class="form-group">
				<input type="mail" class="form-control" placeholder="Email" name="mail" required="yes">
			</div>
			<div class="form-group">
				<label>Institution:</label>	
					<?php 
						$result= "SELECT uni_name FROM universities";
						$run = mysqli_query($conn, $result);
					?>
					<select  class="form-control" name="uni" required="yes">
					<option></option>
					<?php 
						while($rows=mysqli_fetch_assoc($run)){
						$ins=$rows['uni_name'];
						echo "<option value='$ins'>$ins</option>";
						}
					?>
					</select>
			</div>
			<div class="form-group">
			<input type="text" class="form-control" placeholder="password" name="pass" required="yes">
			</div>
			<div class="form-group">
			<input type="submit" class="btn btn-primary btn-block" value="Add User" name="add_user" >
			</div>

		</form>

	</div>
	</div>
</div>
	

</center>

</div>
</body>
<?php


if(isset($_POST['add_user'])){
$email = mysqli_real_escape_string($conn,strip_tags($_POST['mail']));
$uni = mysqli_real_escape_string($conn,strip_tags($_POST['uni']));
$password = mysqli_real_escape_string($conn,strip_tags($_POST['pass']));	

	$ins_sql =  "INSERT INTO  uni_login (email, password, institution) VALUES ('$email','$password','$uni')"; 
	if(mysqli_query($conn,$ins_sql)){?>
		<script>
		window.alert("You have Succesfully Added a university Administrator");
		window.location="admin_dashboard.php";
		</script>
	<?php } else { ?>
		<script>
			window.alert("Server Error. Try Again");
			window.location="admin_dashboard.php";
		</script>
	<?php }
}


?>





</html>