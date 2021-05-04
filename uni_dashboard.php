<!DOCTYPE html>
<html>
<head>
<style>


	.footer {
  	  position: absolute;
	  left: 0;
	  bottom: -100;
	  width: 100%;
	  background-color:black;
	  color: white;
	  text-align: center;
	}


</style>
	<title>Admin Panel</title>

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


</head>

<div class="row">

	                    <!-- navigation bar -->
	<nav class="navbar navbar-default navbar-fixed-top  " name="nav1">
		<div class="container-fluid">
				<!-- logo -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="index.php" class="navbar-brand">Brindex</a>
				</div>
				<!-- Menu items -->
				<div class="collapse navbar-collapse" id="mainNavBar">
						<ul class="nav navbar-nav">
								<li><a href="index.php"><font color="maroon" >Home</font></a></li>
								<li><a href="about.html"><font color="maroon" >About</font></a></li>	
							
						</ul>
						<!-- Right align-->
						
						<ul class="nav navbar-nav navbar-right">
							<li><a href="school_login.php"><font color="orange">Logout</font></a></li>
						</ul>
						
				</div>
		</div>
	</nav>
	<!-- end of navigation bar -->
</div>
 
<br>
<br>
<br>

<body>
<center>
		<font color="maroon" >
			<h1><b>Admin Panel</b></h1>
		</font>
			<br>
<div class="container">

<hr>
	<div class="row">
		<div class="col-md-12">
			<div class="col-md-5">
			<a href="add_uni_courses.php" class="btn btn-primary btn-block" >Add Courses</a>
			</div>
			<div class="col-md-2">
			</div> 
			<div class="col-md-5">
			<a href="edit_uni_courses.php" class="btn btn-danger btn-block" >Edit/Delete Courses</a>
			</div>
		</div>
	</div>
	<hr>
	<br>
	<div class="row">
	<div class="col-md-12">
			<div class="col-md-5">
			<a href="faculties.php" class="btn btn-success btn-block" >Add/Delete Faculties</a>
			</div>
			<div class="col-md-2">
			</div> 
			<div class="col-md-5">
			<a href="add_exam_body.php" class="btn btn-warning btn-block" >Add/Delete Exam Bodies</a>
			</div>
	</div>
	</div>
	<hr>
	<br>
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



<div class="footer">
<div class="row">
<br>
<div class="col-md-offset-2">

	<div class="col-md-10">
		<center>
			<div class="col-md-2">
					<a href="about.html"><font color="white">About us</font></a>
			</div>
			<div class="col-md-2">
				<a href="facebook.com" data-toggle="tooltip" title="Like our page on facebook"><img src="images/facebook.png" width="40" height="40" class="img-rounded"></a>
			</div>
			<div class="col-md-2">
				<a href="twitter.com" data-toggle="tooltip" title="Follow us on twitter"><img src="images/twitter.png" width="40" height="40" class="img-circle"></a>
			</div>
			<div class="col-md-2">
				<a href="mailto:bnkimtai@gmail.com" data-toggle="tooltip" title="Send us a mail"><img src="images/google.png" width="40" height="40" class="img-circle"></a>
			</div>
			<div class="col-md-2">
				<a href="instagram.com" data-toggle="tooltip" title="Follow us on instagram"><img src="images/insta2.jpeg" width="40" height="40" class="img-circle"></a>
			</div>
		</center>
	</div>

</div>
</div>
<div class="container">
	<hr>
</div>
 <!-- Pop up window for adiing admins -->
<div class="modal fade" id="pick_side">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h4 class="modal-title"><font color="black"><center>Choose Destination:</center></font> </h4>
				</div>
			<!-- body -->
				<div class="modal-body">
					<a href="uni_admins.php" class="btn btn-primary">Add Institution Admins</a>
				</div>
				<div class="modal-body">
					<a href="edit_uni_admins.php" class="btn btn-danger">Edit/Delete Institution Admins</a>
				</div>
			

		</div>
	</div>
</div>
<!-- end of Pop up window -->

 <div>
		                 <center>
		                 	<b>©</b>
		                    <script>
		                        document.write(new Date().getFullYear());
		                    </script>.All rights Reserved
		                    <p> Designed by SmartPro Systems 0707357072</p>

		                 </center>
		                </div>

</div>

</html>

<?php
require("connection.php");

if(isset($_POST['add_admin_details'])){
$username = mysqli_real_escape_string($conn,strip_tags($_POST['username']));
$email = mysqli_real_escape_string($conn,strip_tags($_POST['admin_email']));
$password = mysqli_real_escape_string($conn,strip_tags($_POST['admin_pass']));
$conf_pass = mysqli_real_escape_string($conn,strip_tags($_POST['conf_pass']));		

	if($password!=$conf_pass){ ?>
		<script>
		window.alert("Password does not match. Try again");
		window.location="admin_dashboard.php";
		</script>
		
	<?php } else{ 

	$ins_sql =  "INSERT INTO admin_details (username, email, password) VALUES ('$username','$email','$password')"; 
	if(mysqli_query($conn,$ins_sql)){?>
		<script>
		window.alert("You have Succesfully Added an Administrator");
		window.location="admin_dashboard.php";
		</script>
	<?php } else { ?>
		<script>
			window.alert("Server Error. Try Again");
			window.location="admin_dashboard.php";
		</script>
	<?php }
	 }
}

?>
<?php
require("connection.php");

if(isset($_POST['add_featured_courses'])){
$c_name= mysqli_real_escape_string($conn,strip_tags($_POST['c_name']));
$f_category = mysqli_real_escape_string($conn,strip_tags($_POST['f_category']));
$institution = mysqli_real_escape_string($conn,strip_tags($_POST['institution']));
$intake = mysqli_real_escape_string($conn,strip_tags($_POST['intake']));
$location = mysqli_real_escape_string($conn,strip_tags($_POST['location']));		

$ins_sql =  "INSERT INTO featured_courses (course_name, category, institution, intake, location) VALUES ('$c_name','$f_category', '$institution','$intake','$location')"; 
	 if(mysqli_query($conn,$ins_sql)){?>
		<script>
		window.alert("You have Succesfully Added a featured courses");
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