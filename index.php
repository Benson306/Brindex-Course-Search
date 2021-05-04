<!DOCTYPE html>
<html>
<head>
<?php 
require("connection.php");
?>
<style>
	
.prefooter#ribbon{
	background-color: maroon;
}
	.panel-body{
	
	box-shadow:  #ffb3b3 5px 5px 5px;
	}
		.panel-body#panel1{
			background-color: maroon;
		}
		.panel-body#panel2{
			background-color: maroon;
		}
		.panel-body#panel3{
			background-color: #8c8c8c;
			box-shadow:  #e6e6e6 5px 5px 5px;

		}
		#form1{
			opacity :1;
		}

.bg-img {
  /* The image used */ 
background-image: url("images/4.jpg"); 


  /* Control the height of the image */
  min-height: 200px;


  /* Center and scale the image nicely */
 background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;

}

.row#floater {
    float: center;
}
.clearfix {
    overflow: auto;
}
.body{
	min-height: 100%;

}

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


</head>

<div class="row">
	<!--<div class="col-md-offset-1"> -->



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
					<a href="#" class="navbar-brand">Brindex</a>
				</div>
				<!-- Menu items -->
				<div class="nav navbar-expand-md collapse navbar-collapse" id="mainNavBar">
						<ul class="nav navbar-nav">
								<li class="active"><a href="#"><font color="maroon" >Home</font></a></li>
								<li><a href="about.html"><font color="maroon" >About</font></a></li>	
							
						</ul>
						<!-- Right align-->
						
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#" data-toggle="modal" data-toggle="tooltip" title="To recieve course alerts on Mail" data-target="#signupwindow" ><div class="btn btn-sm btn-warning"><font color="white" >Sign Up</font></div></a></li>
						</ul>
						
				</div>
		</div>
	</nav>
	<!-- end of navigation bar -->

<body>
 <!-- Pop up window for login -->
<div class="modal fade" id="loginwindow">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h4 class="modal-title"><center>Login</center> </h4>
				</div>
			<!-- body -->
				<div class="modal-body">
					<form role="form" action="user_login.php" method="POST">
						<div class="form-group">
							<input type ="email" class="form-control" placeholder="Email" name="login_email" required="yes" >
						</div>
						<div class="form-group">
							<input type ="password" class="form-control" placeholder="Password" name="login_pass" required="yes" >
						</div>
					
				</div>
			<!-- footer -->
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary btn-block" name="user_login">
				</div>
				</form>
		</div>
	</div>
</div>
<!-- end of Pop up window -->
 <!-- Pop up window for sign up -->
<div class="modal fade" id="signupwindow">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" >&times;</button>
					<h4 class="modal-title"><center>Sign Up</center> </h4>
				</div>
			<!-- body -->
				<div class="modal-body">
				<h4 class="bg-warning"><center>Sign Up to Receive course alerts on Mail</center> </h4>
					<form role="form" action="sign_up.php" method="POST">
						<div class="form-group">
							<input type ="text" class="form-control" placeholder="Username" name="username" required="yes" >
						</div>
						<div class="form-group">
							<input type ="email" class="form-control" placeholder="Email" name="reg_email" required="yes">
						</div>
						<div class="form-group">
							<input type ="password" class="form-control" placeholder="Password" name="reg_pass" required="yes">
						</div>
						<div class="form-group">
							<input type ="password" class="form-control" placeholder="Confirm Password" name="conf_pass" required="yes">
						</div>
					
				</div>
			<!-- footer -->
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary btn-block" name="register" >
				</div>
				</form>

		</div>
	</div>
</div>
<!-- end of Pop up window -->

 <br>
 <br>
	<br>

	<div class= "row">
	




<div class="bg-img">
<div class="container" >	
	<div class="col-md-offset-2">
			<div class="col-md-10">
			<center>
		<font color="maroon" >
			<h1 ><b>Courses in Various Universities and Colleges around Kenya</b></h1>
			<h2 ><b>Search for courses conviniently</b></h2>
			</font>
			<br>
			
		</center>
		</div>
	</div>


				<div class="row" id="floater" >

				<div class="col-md-12">

				<center>
					<div class='panel panel-success'>
						<div class='panel-body'id='panel3'>
												<form method="POST" action="results.php" >
												<font color="white">
												<!--<div class="col-md-2">
												</div>-->
												<div class="col-md-2">
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
												</div>
												<div class="col-md-2">
													<div class="form-group">
													<label>Category:</label>	
													<?php 
															$result= "SELECT category FROM category";
															$run = mysqli_query($conn, $result);
														?>
														<select  class="form-control" name="category" required="yes">
														<option></option>
														<?php 
															while($rows=mysqli_fetch_assoc($run)){
																$category1=$rows['category'];
																echo "<option value='$category1'>$category1</option>";
															}
														?>
														</select>
													</div>
												</div>
												<div class="col-md-2">
													<div class="form-group">
													<label>Intake:</label>	
															<select class="form-control" name="intake" required="yes">
															<option></option>
															<option>January</option>
															<option>May</option>
															<option>September</option>
															</select>
														</div>
												</div>
												<div class="col-md-2">
													<div class="form-group">
													<label>Location:</label>
													<?php 
															$result= "SELECT location FROM location";
															$run = mysqli_query($conn, $result);
														?>
														<select name="location" class="form-control">
														<option></option>
														<?php 
															while($rows=mysqli_fetch_assoc($run)){
																$location=$rows['location'];
																echo "<option value='$location'>$location</option>";
															}
														?>
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
													<p>
													<br>
													<font color="white">
														<input type="submit" class="btn btn-block btn-warning" value="Search" name="search" >
													</div>
												</div>

												</form>
				</div>
				</div>
				</center>
				</div>
				</div>
	</div>

</div>		
		<div class="container" id="con">
		
<br>

			<div="col-md-offset-2">
			<div class="col-md-12">
			<div class="panel panel-warning">
			 	 <div class="panel-body" id="panel1">
			 	 	<center>
				 	 	<img src="images/9.jpg" class="img img-circle" width="75px" height="75px" >
				 	 </center>
			 	 <h3><center><font face="Pristina" color="white">Top Courses:</font></h3>
			 	 <br>
			 	 <div class='row' id='row4'>
					<div class='col-md-12'>
				     
				     	
				     		
				     		<!-- retrieving from the database !-->
										<?php
											 $sql = "SELECT * FROM featured_courses";
											 $run = mysqli_query($conn, $sql);

												 while($rows = mysqli_fetch_assoc($run) ) {
												 	echo "
												 	
														 	<div class='col-md-4'>
														 	<div class='panel panel-success'>
														 			<div class='panel-body'id='panel1'>
														 				
																	 			<table>
																		 		<b>
																			 			<font color='white'><p><tr>$rows[course_name]</tr></font>
															 	 						<font color='orange'><p><tr>$rows[category]</tr></font>
															 	 						<font color='white'><p><tr>$rows[institution]</tr></font>
															 	 						<font color='orange'><p><tr>$rows[intake]</tr></font>
															 	 						<font color='white'><p><tr>$rows[location]</tr></font>
															 	 				</b>	
															 	 				</table>
												 	 				</div>
							 	 								</div> 
															</div>
														
												 	";
												 }
												?>
							</div>
				     	</div>
				     	
			 	 </div>
			</div>
			</div>
			</div>
<div class="container" id="con">
															

			
			<div="col-md-offset-2">
			<div class="col-md-12">
			<div class="col-md-6">
			<div class="panel panel-warning" id="panel1">
				 	 <div class="panel-body" id="panel1">
				 	 <center>
				 	 	<img src="images/5.jpg" class="img img-rounded" width="100px" height="75px" >
				 	 
				 	 <font face="Pristina" color="white">
						 	 <h3><font color="orange">How Brindex works</font></h3>
						     <p><h4>A prospective students keys in details according to the course they need, institution of learning and intake period,results are filtered from a vast number of courses in our database.
						     </h4></p>
						     <br>
						     </font>
				 	 </center>
				 	 </div>
				 	 
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-warning" id="panel1">
				 	 <div class="panel-body" id="panel1">
				 	 <center>
				 	 	<img src="images/8.jpg" class="img img-rounded" width="75px" height="75px" >

				 	  <font face="Pristina" color="white">
				 	 <h3><font color="orange">Benefits of using Brindex:</font></h3>
				 	
				 	 <h4>
				 	 	<p>Its saves time because its fast</p>
				 	 	<p>Once you sign up, you are able to recieve updates on courses</p>
				 	 	<p>Its easy to economical, i.e its free</p>
				 	 </h4>
				 	  </center>
				 	 </font>
				 	 
				 	 </div>
				</div>
			</div>

			</div>
			</div>



		</div>
		<br>
		</div>
		
	
	</div>

</div>
</div>
</center>
</body>
</div>


	<div class="prefooter" id="ribbon">

	<center><h3><font color="orange" face="pristina">Partners:</font></h3></center>
			<marquee>
						<img src="images/1.jpg" length="250" width="200">
					
						<img src="images/2.jpg" length="250" width="200">
				
						<img src="images/3.jpg" length="250" width="200">
			</marquee>


	</div>
	<br>

<div class="footer">
	<div class="row">
	<br>
	<div class="col-md-offset-2">

		<div class="col-md-10">
		<center>
			<div class="col-md-2">
				<div class="my content-left">
					<a href="about.html"><font color="white">About us</font></a>
				</div>
				
			</div>
		</center>
		<center>
			<div class="col-md-2">
				<a href="http://facebook.com" data-toggle="tooltip" title="Like our page on facebook"><img src="images/facebook.png" width="40" height="40" class="img-rounded"></a>
			</div>
		</center>
		<center>
			<div class="col-md-2">
				<a href="http://twitter.com" data-toggle="tooltip" title="Follow us on twitter"><img src="images/twitter.png" width="40" height="40" class="img-circle"></a>
			</div>
		</center>
		<center>
			<div class="col-md-2">
				<a href="mailto:bnkimtai@gmail.com" data-toggle="tooltip" title="Send us a mail"><img src="images/google.png" width="40" height="40" class="img-circle"></a>
			</div>
		</center>
		<center>
			<div class="col-md-2">
				<a href="http://instagram.com" data-toggle="tooltip" title="Follow us on instagram"><img src="images/insta2.jpeg" width="40" height="40" class="img-circle"></a>
			</div>
		</center>

			
			
		</div>

	</div>
	</div>
	<div class="container">
		<hr>
	</div>


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

