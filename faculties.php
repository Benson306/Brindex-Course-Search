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
<div class="container">
<center>
		<font color="maroon" >
			<h1><b><u>Faculties</u></b></h1>		
		</font>
			<br>

</center>


<div class="row">
	<div class="col-md-offset-4">
		<div class="col-md-6">
		
			<form class="well well-sm" method="post">
				<div class="form-goup">
				<Label>Enter the new Faculty:</Label>
					<input type="text" class="form-control" placeholder="Faculty Name" name="faculty" required="yes">
				</div>
				<br>
				<div class="form-group">
					<input type="Submit" class="btn btn-primary " value="Add" class="form-control"  name="sub_faculty">
				</div>
				
			</form>
		</div>
	</div>
</div>
<center>
<font color="maroon" >
			<h3><b><u>List of Faculties in the system</u></b></h3>		
</font>


<?php 
require("connection.php");
if(isset($_POST['sub_faculty'])){
	$faculty = mysqli_real_escape_string($conn,strip_tags($_POST['faculty']));

	$ins_sql="INSERT INTO faculties (faculty_name) VALUES ('$faculty')";
	 if(mysqli_query($conn,$ins_sql)){?>
		<script>
		window.location="faculties.php";
		</script>
	<?php } else { ?>
		<script>
			window.alert("Server Error. Try Again");
			window.location="faculties.php";
		</script>
	<?php }
}

?>

<!-- retrieving from the database !-->
<?php
	 $sql = "SELECT * FROM faculties";
	 $run = mysqli_query($conn, $sql);

		 echo "
		 <table class='table table-condensed'>
	 			<thead>
	 				<tr>
	 					<th>S.No.</th>
	 					<th>Faculty</th>
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
		 		<td>$rows[faculty_name]</td>
	 			<th><a href='faculties.php?del_id=$rows[faculty_id]' class='btn btn-danger'>Delete</button></a></th>
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
	$del_sql = "DELETE FROM faculties WHERE faculty_id = '$_GET[del_id]' ";
	if(mysqli_query($conn, $del_sql)) { ?>
	<script>
	window.location="faculties.php";
	</script>
	<?php } else { ?>
	<script>
	window.alert("Server Error. Retry");
	window.location="faculties.php";
	</script>

	<?php }
}
?>
<!-- End of deleting course from Database -->
</center>


</div>
</body>
</style>
</head>
</html>



