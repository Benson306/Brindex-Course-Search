<!DOCTYPE html>
<html>
<head>

<?php 
require("connection.php");

?>
<style>
	.footer {
  	  position: absolute;
	  left: 0;
	  bottom: -105;
	  width: 100%;
	  background-color:black;
	  color: white;
	  text-align: center;
	}
.panel-body#panel1{
			background-color: white;
			box-shadow:  #e6e6e6 5px 5px 5px;
		}
		.container {
			background-color: #f5f5f0;
		}
		/* Style the button that is used to open and close the collapsible content */
.collapsible {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 5px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active, .collapsible:hover {
  background-color: #ccc;
}
.collapsible:after {
  content: '\02795'; /* Unicode character for "plus" sign (+) */
  font-size: 10px;
  color: blue;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2796"; /* Unicode character for "minus" sign (-) */
}

/* Style the collapsible content. Note: hidden by default */
.content {
  display: none;
 
}

</style>
	<title>Results</title>

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
						
				</div>
		</div>
	</nav>
</div>	<!-- end of navigation bar -->
 
<br>
<br>
<br>
<br>

<body>
<div class="container">
	<?php
	if(isset($_POST['search'])){
		$faculty = mysqli_real_escape_string($conn,strip_tags($_POST['faculty']));
		$category = mysqli_real_escape_string($conn,strip_tags($_POST['category']));
		$intake = mysqli_real_escape_string($conn,strip_tags($_POST['intake']));
		$location = mysqli_real_escape_string($conn,strip_tags($_POST['location']));

	$sql = "SELECT * FROM all_course_details WHERE faculty = '$faculty' AND category ='$category' AND intake='$intake' AND location='$location' ORDER BY depart ";
	$run = mysqli_query($conn, $sql);

 $count = mysqli_num_rows($run);

	if($count > 0 ){ 
		echo "
<br>
		";

				 while($rows = mysqli_fetch_assoc($run)) {
				 		
				 		$university = $rows['institution'];
				 		$sql2= "SELECT * FROM universities WHERE uni_name ='$university'";
				 		$run2= mysqli_query($conn, $sql2);
						while($rows2 = mysqli_fetch_assoc($run2)){
							

				 	echo "
			<p>
			<div class='col-md-4' > 
				<div class='panel panel-success'  >
					<div class='panel-body'id='panel1'>
																	 	
							<b>
							<font size='2px'>
						<table>
								<font color='black'><p><tr><img src='images/course.jpeg' class='img-rounded' width='25px' height='25px'> Course:</font><font color='maroon'> $rows[course_name]</tr></font>
								<font color='black'><p><tr><img src='images/department2.jpeg' class='' width='25px' height='25px'> Department:</font><font color='Blue'>  $rows[depart]</tr></font>
								<font color='black'><p><tr><img src='images/institution.jpg' class='img-rounded' width='25px' height='25px'></font><font color='Blue'>  $rows[institution] </tr></font>
								<p><tr><img src='images/location2.jpeg' class='img-circle' width='20px' height='20px'><font color='black' style='text-transform: capitalize; ' > $rows[location]</style></tr></font>

						</table>	<br>
								<button type='button' class='collapsible'>More Info..</button> 
						<div class='content'>	
						<table>			
							<font color='black'><p><tr><img src='images/pricing2.jpeg' class='img-circle' width='25px' height='25px'> Pricing(Shs):</font><font color='Blue'>  $rows[pricing]</tr></font>
							<font color='black'><p><tr><img src='images/duration.jpeg' class='img-circle' width='25px' height='25px'> Duration (months):</font><font color='Blue'>  $rows[duration]</tr></font>
							<font color='black'><p><tr><img src='images/require.jpeg' class='img-circle' width='25px' height='25px'>Requirements:</font><font color='Blue'>  $rows[requirements]</tr></font>
							<font color='black'><p><tr>Exam Body:</font><font color='Blue'>  $rows[exam_body]</tr></font>
							<font color='black'><p><tr></font><img src='images/tel2.jpeg' class='img-circle' width='25px' height='25px'><font color='red'> $rows2[phone_number]</font> 	|	 <font color='black'><img src='images/web2.jpeg' class='img-circle' width='18px' height='18px'>Website:</font><font color='Blue'>  <a href='http://$rows2[link]'>$rows2[link]</a></tr></font>
						</table>	
						</div>	
						
									
							</font>
							</b>
													 	 				
					</div>
				</div>
			</div>
			<br>
			</p>
";


						}

						}
						// loop for the action listeners is put outside all other loops
				echo "
						<script type='text/javascript'>
									var coll = document.getElementsByClassName('collapsible');
										var i;

										for (i = 0; i < coll.length; i++) {
										  coll[i].addEventListener('click', function() {
										    this.classList.toggle('active');
										    var content = this.nextElementSibling;
										    if (content.style.display == 'block') {
										      content.style.display = 'none';
										    } else {
										      content.style.display = 'block';
										    } 
										  });
										}
										</script>
				 	
						";

	} else {
		echo "
		<center>
		<p class='bg-danger'> Oops!!!Sorry we do not have a course that fits your description at the moment. Try others back in the <a href='index.php'><u><b>homepage</a></p> </center>
						 
		";
	}


				}

?>
<br>
</div>
						
</body>


<div class="footer">
 					<font color="white">
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