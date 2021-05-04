<!DOCTYPE html>
<html>
<head>
<?php 
require("connection.php");
?>
<style>


.body{

	min-height: 100%;
}
	.footer {
  	  position: relative;
	  left: 0;
	  bottom: -100%;
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
								<li class="active"><a href="#"><font color="maroon" >Home</font></a></li>
								<li><a href="about.html"><font color="maroon" >About</font></a></li>	
							
						</ul>
						<!-- Right align-->
						
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.php"><font color="orange">Logout</font></a></li>
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
			<h1><b><u>Featured Courses</u></b></h1>
			<h3><b>N/B: Only the first three will appear in the homepage</b></h3>
		</font>
			<br>

</center>

<div class="container">
<!-- retrieving from the database !-->
<?php
	 $sql = "SELECT * FROM featured_courses";
	 $run = mysqli_query($conn, $sql);

		 echo "
		 <table class='table table-condensed'>
	 			<thead>
	 				<tr>
	 					<th>S.No.</th>
	 					<th>Course_name</th>
	 					<th>Category</th>
	 					<th>Institution</th>
	 					<th>Intake</th>
	 					<th>location</th>
	 					<th>Edit</th>
	 					<th>Delete</th>
	 				</tr>
	 			</thead>
	 		<tbody>
		 "; 
		 $num = 1;
		 while($rows = mysqli_fetch_assoc($run) ) {
		 	echo "
		 		<tr>
		 		<td>$num</td>
		 		<td>$rows[course_name]</td>
		 		<td>$rows[category]</td>
		 		<td>$rows[institution]</td>
		 		<td>$rows[intake]</td>
		 		<td>$rows[location]</td>
	 			<th><a href='edit_featured_courses.php?edit_id=$rows[course_id]' class='btn btn-primary'>Edit</button></a></th>
	 			<th><a href='edit_featured_courses.php?del_id=$rows[course_id]' class='btn btn-danger'>Delete</button></a></th>
		 		</tr>
		 	";
		 $num++;
		 }
		
		 echo "</table>"; 
		?>

<!-- End of retrieving-->
</div>

<!-- Deleting course from database-->
<?php 
if(isset($_GET['del_id'])){
	$del_sql = "DELETE FROM featured_courses WHERE course_id = '$_GET[del_id]' ";
	if(mysqli_query($conn, $del_sql)) { ?>
	<script>
	window.location="edit_featured_courses.php";
	</script>
	<?php } else { ?>
	<script>
	window.alert("edit_featured_courses.php");
	</script>

	<?php }
}
?>
<!-- End of deleting course from Database -->

<!--form for editting -->
<?php 
	if (isset($_GET['edit_id']) ) { 
		$sql = "SELECT * FROM featured_courses WHERE course_id = '$_GET[edit_id]' ";
		$run = mysqli_query($conn, $sql);
		while( $rows= mysqli_fetch_assoc($run) ) {
			$course_name = $rows['course_name'];
			$institution = $rows['institution'];
			$category = $rows['category'];
			$intake = $rows['intake'];
			$location = $rows['location'];
		}
		?>
		<div class="container">
		<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4 well well-sm">
			<h2><center>Edit Featured Courses</h2></center></h2>
	<form role="form"  method="POST">
						<div class="form-group">
						<label> Featured Course:</label>
							<input type ="text" class="form-control" placeholder="Course Name" name="edit_c_name" required="yes" value="<?php echo $course_name; ?>" >
						</div>
						<div class="form-group">
							<label>Institution:</label>	
							<?php 
							require("connection.php");
									$result= "SELECT uni_name FROM universities";
									$run = mysqli_query($conn, $result);
								?>
								<select  class="form-control" name="edit_institution" required="yes">
								<option></option>
								<?php 
									while($rows=mysqli_fetch_assoc($run)){
										$category1=$rows['uni_name'];
										echo "<option value='$category1'>$category1</option>";
									}
								?>
								</select>
						</div>
						<div class="form-group">
							<label>Category:</label>	
							<?php 
							require("connection.php");
									$result= "SELECT category FROM category";
									$run = mysqli_query($conn, $result);
								?>
								<select  class="form-control" name="edit_f_category" required="yes">
								<option></option>
								<?php 
									while($rows=mysqli_fetch_assoc($run)){
										$category1=$rows['category'];
										echo "<option value='$category1'>$category1</option>";
									}
								?>
								</select>
						</div>
						<div class="form-group">
						<label>Intake:</label>
							<select class="form-control" name="edit_intake" required="yes"  >
							<option></option>
							<option>All</option>
							<option>January</option>
							<option>May</option>
							<option>September</option>
							</select>
						</div>
						<div class="form-group">
						<label>Location:</label>
						<?php 
								$result= "SELECT location FROM location";
								$run = mysqli_query($conn, $result);
							?>
							<select name="edit_location" class="form-control" required="yes">
							<option></option>
							<?php 
								while($rows=mysqli_fetch_assoc($run)){
									$location=$rows['location'];
									echo "<option value='$location'>$location</option>";
								}
							?>
							</select>
						</div>
						<center>
						<div class="form-group">
							<input type="hidden" value="<?php echo $_GET['edit_id'] ?>" name="edit_course_id"></p>
							<input type="submit" Value="Save" class="btn btn-primary " name="edit_featured_courses" >
							<a href="edit_featured_courses.php" class="btn btn-danger">Cancel</a>
						</div>
						</center>
	</form>
		</div>

		<div class="col-md-4">
		</div>
	
	</div>
	</div>

		<?php }
?>

<!-- Editing data in a database -->
<?php 
if (isset($_POST['edit_featured_courses'] ) ){

	$edit_course_name = mysqli_real_escape_string($conn,strip_tags($_POST['edit_c_name']));
	$edit_category = mysqli_real_escape_string($conn,strip_tags($_POST['edit_f_category']));
	$edit_institution = mysqli_real_escape_string($conn,strip_tags($_POST['edit_institution']));
	$edit_intake = mysqli_real_escape_string($conn,strip_tags($_POST['edit_intake']));
	$edit_location = mysqli_real_escape_string($conn,strip_tags($_POST['edit_location']));

	$edit_id = $_POST['edit_course_id']; //passes the course id

	$edit_sql = "UPDATE featured_courses SET course_name= '$edit_course_name', category = '$edit_category', institution= '$edit_institution', intake = '$edit_intake', location = '$edit_location' WHERE course_id ='$edit_id' ";
	 if(mysqli_query($conn,$edit_sql) ) { ?>
	 	<script>
	 	window.alert("You have succesfully Edited");
	 	window.location="edit_featured_courses.php";
	 	</script>
	 <?php } else { ?>
	 <script >
	 window.alert("Server Error. Retry");
	 window.location="edit_featured_courses.php";
	 </script>
	 <?php }
}

?>


<!-- End of editing data in a database -->
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


