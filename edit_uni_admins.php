<!DOCTYPE html>
<html>
<head>
<?php 
require("connection.php");
?>

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
								<li class="active"><a href="index.php"><font color="maroon" >Home</font></a></li>
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

			<h1><b><u><font type="pristina">Edit Institution Admin details</font></u></b></h1>		</font>
<br>

</center>

<div class="container">
<!-- retrieving from the database !-->
<?php
	 $sql = "SELECT * FROM uni_login";
	 $run = mysqli_query($conn, $sql);

		 echo "
		 <table class='table table-condensed'>
	 			<thead>
	 				<tr>
	 					<th>S.No.</th>
	 					<th>Email</th>
	 					<th>Password</th>
	 					<th>College</th>
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
		 		<td>$rows[email]</td>
		 		<td>$rows[password]</td>
		 		<td>$rows[institution]</td>
	 			<th><a href='edit_uni_admins.php?edit_id=$rows[user_id]' class='btn btn-primary'>Edit</button></a></th>
	 			<th><a href='edit_uni_admins.php?del_id=$rows[user_id]' class='btn btn-danger'>Delete</button></a></th>
		 		</tr>
		 	";
		 $num++;
		 }
		
		 echo "</table>"; 
		?>

<!-- End of retrieving-->
</div>

<!-- Deleting cuorse from database-->
<?php 
if(isset($_GET['del_id'])){
	$del_sql = "DELETE FROM uni_login WHERE user_id = '$_GET[del_id]' ";
	if(mysqli_query($conn, $del_sql)) { ?>
	<script>
	window.location="edit_uni_admins.php";
	</script>
	<?php } else { ?>
	<script>
	window.alert("Server Error. Retry");
	window.location="edit_uni_admins.php";
	</script>

	<?php }
}
?>
<!-- End of deleting course from Database -->

<!--form for editting -->
<?php 
	if (isset($_GET['edit_id']) ) { 
		$sql = "SELECT * FROM uni_login WHERE user_id = '$_GET[edit_id]' ";
		$run = mysqli_query($conn, $sql);
		while( $rows= mysqli_fetch_assoc($run) ) {
			$email = $rows['email'];
			$institution = $rows['institution'];
			$pass = $rows['password'];
		}
		?>
		<div class="container">
		<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4 well well-sm">
			<h2><center>Edit Admin Details</h2></center></h2>
						<form role="form" method="POST">
						<div class="form-group">
						<label>Email:</label>
							<input type ="email" class="form-control"  name="email" required="yes"  value="<?php echo $email; ?>">
						</div>
						<div class="form-group">
							<label>Institution:</label>	
								<?php 
									require ("connection.php");
										$result= "SELECT uni_name FROM universities";
										$run = mysqli_query($conn, $result);
								?>
								<select  class="form-control" name="uni" required="yes" >
									<option></option>
									<?php 
										while($rows=mysqli_fetch_assoc($run)){
											$facul=$rows['uni_name'];
											echo "<option value='$facul'>$facul</option>";
											}
										?>
								</select>
						</div>

						<div class="form-group">
						<label>Password:</label>	
							<input type ="text" class="form-control" name="password" required="yes"  value="<?php echo $pass; ?>">
						</div>
						<center>
						<div class="form-group">
							<input type="hidden" value="<?php echo $_GET['edit_id'] ?>" name="edit_admin_id"></p>
							<input type="submit" Value="Save" class="btn btn-primary " name="edit_admin_courses" >
							<a href="edit_uni_admins.php" class="btn btn-danger">Cancel</a>
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
if (isset($_POST['edit_admin_courses'] ) ){

	$institution = mysqli_real_escape_string($conn,strip_tags($_POST['uni']));
	$email = mysqli_real_escape_string($conn,strip_tags($_POST['email']));
	$password = mysqli_real_escape_string($conn,strip_tags($_POST['password']));
	

	$edit_id = $_POST['edit_admin_id']; //passes the course id

	$edit_sql = "UPDATE uni_login SET institution= '$institution', email = '$email', password= '$password' WHERE user_id ='$edit_id' ";
	 if(mysqli_query($conn,$edit_sql) ) { ?>
	 	<script>
	 	window.alert("You have succesfully Edited");
	 	window.location="edit_uni_admins.php";
	 	</script>
	 <?php } else { ?>
	 <script >
	 window.alert("Server Error. Retry");
	 window.location="edit_uni_admins.php";
	 </script>
	 <?php }
}

?>


<!-- End of editing data in a database -->
</body>



</html>


