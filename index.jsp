<!DOCTYPE html>
<html>
<head>
	<title></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<style type="text/css">
	.side-menu
	{
		height: 79%;
		width: 90%;
		font-size: 20px;
		float: left;
		z-index: 2;
		background-color: #00000f;
		color: white;
		list-style-type: none;
	}
	.side-menu ul
	{
		list-style-type: none;
		margin-left: 10px;
	}
	.side-menu ul li
	{
		list-style-type: none;
		font-weight: bold;
		margin-top: 10px;
		cursor: pointer;
	}
	.side-menu ul li:hover
	{
		color: orange;
	}
	@media only screen and (max-width: 1200px)
	{
		.side-menu ul
		{
			text-align: center;
		}
	}
</style>
</head>
<body>

<div class="navbar navbar-expand navbar-dark bg-danger" style="height: 100px">
	<div class="container-fluid">
				<a href="/stylethree/index.jsp" class="navbar-brand" style="font-size: 34px;important!"><img src="images/logo.png" height="80px" width="80px">&emsp;ABD SCHOOL</a>
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="#" class="nav-link" style="font-size: 28px; padding : 15px; important!"> Admissions </a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link" style="font-size: 28px; padding: 15px; important!"> Careers </a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link" style="font-size: 28px; padding:15px; important!"> Achievements </a>
					</li>
				</ul>
	</div>
</div>

<div class="container-fluid">
	<div class="row" style="margin-top: 30px;">
		<div class="col-xl-2">
			<section class="header" style="margin-top: 20px;">
				<div class="side-menu">
					<ul>
						<a href="/stylethree/Students.jsp"><li>Students</li></a>
						<a href="#"><li>Timetables</li></a>
						<a href="#"><li>Schedule</li></a>
						<a href="#"><li>Events</li></a>
						<a href="#"><li>News</li></a>
						<a href="#"><li>Activitiess</li></a>
						<a href="#"><li>Fees</li></a>
					</ul>
				</div>
			</section>
		</div>
		<div class="col-xl-9 mt-3 mx-4">
			<div class="carousel slide" id="myslider" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="images/carousel1.jpg" width="100%" height="300px">
					</div>
					<div class="carousel-item">
						<img src="images/carousel2.jpg" width="100%" height="300px">
					</div>
					<div class="carousel-item">
						<img src="images/carousel3.jpg" width="100%" height="300px">
					</div>
				</div>
				<ul class="carousel-indicators">
					<li data-target="#myslider" data-slide-to="0" active></li>
					<li data-target="#myslider" data-slide-to="1"></li>
					<li data-target="#myslider" data-slide-to="2"></li>
				</ul>
				<a href="#myslider" data-slide="prev" class="carousel-control-prev">
					<span class="carousel-control-prev-icon"></span>
				</a>
				<a href="#myslider" data-slide="next" class="carousel-control-next">
					<span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
	</div>
</div>


<br><br>

<div class="container center" style="height: 200px;">
	<hr style="border-top: 1px solid black;">
	<h1 style="text-align: center;margin-top: 20px;">OUR MOTTO</h1>
	<h3 style="text-align: center;"><i>Commited to excellence in Teaching and Learning</i></h3>
	<hr style="border-top: 1px solid black;">
</div><br>

<div class="container">
	<h1 class="text-center text-danger">OUR SPONSERS</h1><br><br>
	<div class="row">
		<div class="col-xl-4" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/partner2.jpg" class="img-fluid img-thumbnail" width="250px" height="202px"></img>
		</div>
		<div class="col-xl-4" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/partner1.jpg" class="img-fluid img-thumbnail" height="202px"></img>
		</div>
		<div class="col-xl-4" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/partner3.jpg" class="img-fluid img-thumbnail" width="250px" height="202px"></img>
		</div>		
	</div>
</div><br><br>

<div class="container">
	<h1 class="text-center text-danger">MANAGEMENT MEMBERS</h1><br><br>
	<div class="row">
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/mgmt1.jpg" class="img-fluid rounded-circle"></img><br>
			<h3>DIRECTOR</h3>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/mgmt2.jpg" class="img-fluid rounded-circle"></img><br>
			<h3>PRINCIPAL</h3>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/mgmt3.jpg" class="img-fluid rounded-circle"></img><br>
			<h3>VICE-PRINCIPAL</h3>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/mgmt4.jpg" class="img-fluid rounded-circle"></img><br>
			<h3>MANAGER</h3>
		</div>		
	</div>
</div>


<br><br>
<div class="footer" style="background-color: black; ">
	<div class="container"><br><br>
		<div class="row">
			<div class="col-lg-7 text-white">
				<h1>Contact Us</h1>
				<p>City Office : XYZ Plaza, Freeganj, Ujjain</p>
				<p><i class="fa fa-envelope">&nbsp;90000-00000</i></p>
			</div>
			<div class="col-lg-5 text-white">
				<h3 style="text-align: left; margin-left: 15px;">WE ARE ON</h3>
				<p><i class="fa fa-facebook-square"></i><a href="https://www.facebook.com/piyushsethiya12"> Facebook</a>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <i class="fa fa-youtube"><a href="#">YouTube</a></i>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <i class="fa fa-whatsapp"><a href="#">Whatsapp</a></i>
				</p>
				<p><i class="fa fa-instagram"></i><a href="https://www.instagram.com/apexcompetitor"> Instagram</a>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <i class="fa fa-twitter"><a href="#">Twitter</a></i>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <i class="fa fa-telegram"><a href="#">Telegram</a></i>
				</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>