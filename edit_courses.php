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
								<li><a href="index.php"><font color="maroon" >Home</font></a></li>
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
<div class="container">
<center>
		<font color="maroon" >
			<h3><b><u>Edit Course Details</u></b></h3>
			<h4>Choose the name of the university to filter all courses in that university</h4>
			<div class="row">
			<div class="col-md-4">
				
			</div>
			<div class="col-md-4">
				<form method="POST">
					<div class="form-group">
					<?php 
						$result= "SELECT uni_name FROM universities";
						$run = mysqli_query($conn, $result);
					?>
					<select name="school" class="form-control">
					<option>--University--</option>
					<?php 
						while($rows=mysqli_fetch_assoc($run)){
							$uni_name=$rows['uni_name'];
							echo "<option value='$uni_name'>$uni_name</option>";
						}
					?>
					</select> 
					</div>
					<div class="form-group">
						<input type="submit" value="Search" class="btn btn-primary" name="sub_school">
					</div>
				</form>
			</div>
			<div class="col-md-4">
				
			</div>
				
			</div>
		</font>
			<br>
</center>

</div>


<?php 
if(isset($_POST['sub_school'])){
$school = mysqli_real_escape_string($conn,strip_tags($_POST['school']));
$sql = "SELECT * FROM all_course_details WHERE institution = '$school'  ";
$run = mysqli_query($conn, $sql);

echo "
	
		 <table class='table table-condensed'>
	 			<thead>
	 				<tr>
	 					<th>S.No.</th>
	 					<th>Course</th>
	 					<th>Department</th>
	 					<th>Category</th>
	 					<th>Faculty</th>
	 					<th>Duration</th>
	 					<th>Institution</th>
	 					<th>Location</th>
	 					<th>Intake</th>
	 					<th>Exam body</th>
	 					<th>pricing</th>
	 					<th>Requirements</th>
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
		 		<td>$rows[depart]</td>
		 		<td>$rows[category]</td>
		 		<td>$rows[faculty]</td>
		 		<td>$rows[duration]</td>
		 		<td>$rows[institution]</td>
		 		<td>$rows[location]</td>
		 		<td>$rows[intake]</td>
		 		<td>$rows[exam_body]</td>
		 		<td>$rows[pricing]</td>
		 		<td>$rows[requirements]</td>
	 			<th><a href='edit_courses.php?edit_id=$rows[course_id]' class='btn btn-primary'>Edit</button></a></th>
	 			<th><a href='edit_courses.php?del_id=$rows[course_id]' class='btn btn-danger'>Delete</button></a></th>
		 		</tr>
		 	";
		 $num++;
		 }
		
		 echo "</table>"; 
		}
		?> 
<!-- End of retrieving-->
<!-- Deleting cuorse from database-->
<?php 
if(isset($_GET['del_id'])){
	$del_sql = "DELETE FROM all_course_details WHERE course_id = '$_GET[del_id]' ";
	if(mysqli_query($conn, $del_sql)) { ?>
	<script>
	window.location="edit_courses.php";
	</script>
	<?php } else { ?>
	<script>
	window.alert("Server Error. Retry");
	window.location="edit_courses.php";
	</script>

	<?php }
}
?>
<!-- End of deleting course from Database -->

<!--form for editting -->
<?php 
	if (isset($_GET['edit_id']) ) { 
		$sql = "SELECT * FROM all_course_details WHERE course_id = '$_GET[edit_id]' ";
		$run = mysqli_query($conn, $sql);
		while( $rows= mysqli_fetch_assoc($run) ) {
			$course_name = $rows['course_name'];
			$depart = $rows['depart'];
			$category = $rows['category'];
			$faculty = $rows['faculty'];
			$duration = $rows['duration'];
			$institution = $rows['institution'];
			$location = $rows['location'];
			$intake = $rows['intake'];
			$exam_body = $rows['exam_body'];
			$pricing = $rows['pricing'];
			$requirements = $rows['requirements'];
		}
		?>
		<div class="container">
		<div class="row">
		
		<div class="col-md-12 well well-sm">
			<center>
			<h2>Edit Course</h2>
			<form method="POST" >
				<div class="col-md-5">
					<div class="form-group">
						<label>Category:</label>
						<?php 
							$result= "SELECT category FROM category";
							$run = mysqli_query($conn, $result);
						?>
						<select name="category" class="form-control" required="yes">
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
					<label>Course:</label>
						<input type ="text" class="form-control" value="<?php echo $course_name;?>" name="course_name" required="yes">
					</div>
					<div class="form-group">
					<label>Department:</label>
						<input type ="text" class="form-control" value="<?php echo $depart;?>" name="depart" required="yes">
					</div>
					<div class="form-group">
					<label>Faculty:</label>	
					<?php 
					require ("connection.php");
							$result= "SELECT faculty_name FROM faculties";
							$run = mysqli_query($conn, $result);
						?>
						<select  class="form-control" name="faculty" required="yes">
						<option></option>
						<?php 
							while($rows=mysqli_fetch_assoc($run)){
								$facul=$rows['faculty_name'];
								echo "<option value='$facul'>$facul</option>";
							}
						?>
						</select>
					</div>
					<div class="form-group">
					<label>Duration in months:</label>
						<input type ="text" class="form-control" value="<?php echo $duration;?>" name="duration" required="yes">
					</div>
					<div class="form-group">
						<label>Institution:</label>	
							<?php 
							require("connection.php");
									$result= "SELECT uni_name FROM universities";
									$run = mysqli_query($conn, $result);
								?>
								<select  class="form-control" name="institution" required="yes">
								<option></option>
								<?php 
									while($rows=mysqli_fetch_assoc($run)){
										$category1=$rows['uni_name'];
										echo "<option value='$category1'>$category1</option>";
									}
								?>
								</select>
					</div>
					
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-5">
							<div class="form-group">
							<label>Exam Body:</label>
							<?php 
								$result= "SELECT body_name FROM exam_body";
								$run = mysqli_query($conn, $result);
							?>
							<select name="exam_body" class="form-control" required="yes">
							<option></option>
							<option>None</option>
							<?php 
								while($rows=mysqli_fetch_assoc($run)){
									$body1=$rows['body_name'];
									echo "<option value='$body1'>$body1</option>";
								}
							?>
							</select>
							</div>
						<div class="form-group">
						<label>Intake:</label>
							<select class="form-control" name="intake" value="<?php echo $intake;?>" required="yes">
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
							<select name="location" class="form-control" required="yes">
							<option></option>
							<?php 
								while($rows=mysqli_fetch_assoc($run)){
									$location=$rows['location'];
									echo "<option value='$location'>$location</option>";
								}
							?>
							</select>
					</div>
					<div class="form-group">
					<label>Pricing:</label>
						<input type ="text" class="form-control" value="<?php echo $pricing;?>" name="pricing">
					</div>
					<div class="form-group">
					<label>Requirements:</label>
						<textarea class="form-control" Placeholder="Requirements" name="requirements"></textarea>
					</div>
					<center>
						<input type="hidden" value="<?php echo $_GET['edit_id'] ?>" name="edit_courses_id"></p>
						<input type="submit" class="btn btn-success" name="sub_courses">
					</center>
				</div>
	</form>
	</center>
		</div>
	
	</div>
	</div>

		<?php }
?>

<!-- Editing data in a database -->
<?php 
if (isset($_POST['sub_courses'] ) ){

	$course_name = mysqli_real_escape_string($conn,strip_tags($_POST['course_name']));
	$depart = mysqli_real_escape_string($conn,strip_tags($_POST['depart']));
	$category = mysqli_real_escape_string($conn,strip_tags($_POST['category']));
	$faculty = mysqli_real_escape_string($conn,strip_tags($_POST['faculty']));
	$duration = mysqli_real_escape_string($conn,strip_tags($_POST['duration']));
	$institution = mysqli_real_escape_string($conn,strip_tags($_POST['institution']));
	$location = mysqli_real_escape_string($conn,strip_tags($_POST['location']));
	$intake = mysqli_real_escape_string($conn,strip_tags($_POST['intake']));
	$exam_body = mysqli_real_escape_string($conn,strip_tags($_POST['exam_body']));
	$pricing = mysqli_real_escape_string($conn,strip_tags($_POST['pricing']));
	$requirements = mysqli_real_escape_string($conn,strip_tags($_POST['requirements']));

	$edit_id = $_POST['edit_courses_id']; //passes the course id

	$edit_sql = "UPDATE all_course_details SET course_name= '$course_name', depart = '$depart', category = '$category', faculty='$faculty', duration = '$duration', institution= '$institution', location = '$location', intake = '$intake', exam_body = '$exam_body', pricing='$pricing', requirements = '$requirements' WHERE course_id ='$edit_id' ";

	 if(mysqli_query($conn,$edit_sql) ) { ?>
	 	<script>
	 	window.alert("You have succesfully Edited");
	 	window.location="edit_courses.php";
	 	</script>
	 <?php } else { ?>
	 <script >
	 window.alert("Server Error. Retry");
	 window.location="edit_courses.php";
	 </script>
	 <?php }
}

?>

</body>
</div>
</div>

</body>
</html>
