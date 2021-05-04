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
						
						
				</div>
		</div>
	</nav>


<body>
<div class="container">
<br>
<br>
<br>
<br>
<br>
<br>
<center>
<h2><font face="pristina"><u>School Login Panel</u></font></h2>
	<div class="well well-sm">
		<div class="row">
			<div class="col-md-offset-3">
				<div class="col-md-8">
					<form method="post" role="form">
					<div class="form-group">
					<input type="text" class="form-control" placeholder="Email" name="mail" required="yes">
					</div>
					<div class="form-group">
					<input type="password" class="form-control" placeholder="Password" name="pass" required="yes">
					</div>
					<br>
					<div class="form-group">
					<input type="submit" class="btn btn-primary btn-block" value="Login" name="login">
					</div>

					</form>
				</div>
			</div>
		</div>

	</div>
</center>
	




</div>
</body>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<div class="footer">
 					<font color="black">
		                 <center>
		                 	<b>©</b>
		                    <script>
		                        document.write(new Date().getFullYear());
		                    </script>.All rights Reserved
		                    <p> Designed by SmartPro Systems 0707357072</p>

		                 </center>
		                 </font>
		        
</div>
</html>
<?php
require("connection.php");

if(isset($_POST['login'])){
	$email = mysqli_real_escape_string($conn,strip_tags($_POST['mail']));
	$password = mysqli_real_escape_string($conn,strip_tags($_POST['pass']));

	$sql = "SELECT * FROM uni_login WHERE email = '$email' ";
	$run = mysqli_query($conn, $sql);  //runs the select sql

	$rows = mysqli_fetch_assoc($run); //counts the number of emails

	$pass = $rows['password']; // gets password from database
	$count= mysqli_num_rows($run);

	if($count>0){
		if($password==$pass){ ?>
			<script>
				window.alert("You are logged in as a university Admin ");
				window.location="uni_dashboard.php";
				</script> 
			<?php }else{ ?>
				<script>
				window.alert("password is incorrect. Try again");
				window.location="school_login.php";
				</script>
			<?php  
		} 

	}else { ?>
		
		<script>
			window.alert("You are not an Admin or account does not exist. Retry");
			window.location="school_login.php";
		</script>

	<?php }
}
?>