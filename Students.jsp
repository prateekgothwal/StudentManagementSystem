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

<jsp:include page='/StudentsJS.jsp'/>

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
			<section class="header">
				<div class="side-menu">
					<ul>
						<li>Students</li>
						<li>Timetables</li>
						<li>Schedule</li>
						<li>Events</li>
						<li>News</li>
						<li>Activities</li>
						<li>Fees</li>
					</ul>
				</div>
			</section>
		</div>
		<div class="col-xl-9 mt-3 mx-4" style="text-align: center; background-color: orange;">
			<h1 style="margin-top: 50px;">Eduction is my birth right</h1>
			<h3>-Bal Gangadhar Tilak</h3>
		</div>
	</div>
</div>


<div class="container-fluid">
	<div class="row" style="margin-top: 30px;">
		<div class="col-xl-2" style="text-align: center;">
			<img src="images/schoolboy.jpg" class="img-fluid" style="height: 330px;">
			
		</div>
		<div class="col-xl-9">
			<table><tr><td><input size="80" type='text' id='searchText' placeholder='Search Student' oninput='searchStudent(this)'></td><td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</td><td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  ADD NEW STUDENT
</button></td></tr></table>

			    
			<br>
			<br>
			
<div id='gridContainer' style='height:300px;overflow:scroll;border:1px solid black'>
			
	<table class="table" id="studentViewGrid">
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">RollNumber</th>
      <th scope="col">Name</th>
      <th scope="col">City</th>
      <th scope="col">Gender</th>
      <th scope="col">D.O.B.</th>
      <th scope="col">EDIT</th>
      <th scope="col">DELETE</th>
      <th scope="col">DETAILS</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>
</div>

		</div>
	</div>
</div>

<br><br><br>

<div class="container">
	<h1 class="text-center text-danger">OUR STAR ALUMINI</h1><br><br>
	<div class="row">
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/alumini1.jpg" class="img-fluid rounded-circle"></img>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/alumini2.jpg" class="img-fluid rounded-circle"></img>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/alumini3.jpg" class="img-fluid rounded-circle"></img>
		</div>
		<div class="col-xl-3" style="text-align: center; margin-top: 5px; margin-bottom: 5px;">
			<img src="images/alumini4.jpg" class="img-fluid rounded-circle"></img>
		</div>		
	</div>
</div>

<!--Add Module-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog model-dialog-centered bg-dark" role="document">
    <div class="modal-content justify-content-center">
      <div class="modal-header">
        <h5 class="modal-title text-primary" id="exampleModalLabel">ADD STUDENT</h5>
        <button type="button" id="addStudentViewClose" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
<form action="/stylethree/AddStudent.jsp">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Roll Number</label>
    <div class="col-sm-10">
      <input type="number" name="rollNumber" class="form-control" id="aroll">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" name="name" class="form-control" id="aname">
    </div>
  </div>
  <div class="form-group row">
      <label for="inputState" class="col-sm-2">City</label>
      <div class="col-sm-10">
      <select id="act" name="cityCode" class="form-control">
        <option value="-1" selected>Choose...</option>
      </select>
    </div>
</div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="aml" value="M" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="afe" value="F">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">D.O.B.</label>
    <div class="col-sm-10">
      <input type="date" name="dateOfBirth" class="form-control" id="adob">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-2">Indian?</div>
    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" name="indian" type="checkbox" id="aind">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-10">
      <input type="textarea" rows="5" cols="50" name="address" row="4" class="form-control" id="aaddr">
    </div>
  </div>
  <center>
  <button type="button" onclick="addStudentValidator()" class="btn btn-success">ADD</button>
</center>
</form>

      </div>
      <div class="modal-footer justify-content-center">
      </div>
    </div>
  </div>
</div>



<!--Details Module-->
<button type="button" id="detailsViewModalButton" class="btn btn-primary" data-toggle="modal" data-target="#detailsViewModal" style="visibility: hidden;"></button>

<div class="modal fade" id="detailsViewModal" tabindex="-1" role="dialog" aria-labelledby="detailsViewModalLabel" aria-hidden="true">
  <div class="modal-dialog model-dialog-centered bg-dark" role="document">
    <div class="modal-content justify-content-center">
      <div class="modal-header">
        <h5 class="modal-title text-primary" id="detailsViewModalLabel"> STUDENT's DETAILS</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="container-fluid">
      		<div class="row">
      			<label class="col-sm-4">Roll Number</label>
      			<span id="detailsViewRollNumber" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Name</label>
      			<span id="detailsViewName" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">City</label>
      			<span id="detailsViewCity" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Gender</label>
      			<span id="detailsViewGender" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">D.O.B.</label>
      			<span id="detailsViewDOB" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Indian</label>
      			<span id="detailsViewIsIndian" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Address</label>
      			<span id="detailsViewAddress" class="col-sm-8"></span>
      		</div>
      	</div>

      </div>
      <div class="modal-footer justify-content-center">
      </div>
    </div>
  </div>
</div>


<!--Delete Module-->
<button type="button" id="deleteStudentViewModalButton" class="btn btn-primary" data-toggle="modal" data-target="#deleteStudentViewModal" style="visibility: hidden;"></button>

<div class="modal fade" id="deleteStudentViewModal" tabindex="-1" role="dialog" aria-labelledby="deleteStudentViewModalLabel" aria-hidden="true">
  <div class="modal-dialog model-dialog-centered bg-dark" role="document">
    <div class="modal-content justify-content-center">
      <div class="modal-header">
        <h5 class="modal-title text-primary" id="deleteStudentViewModalLabel">DELETE STUDENT</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="container-fluid">
      		<form id='studentDeleteForm' action='/stylethree/DeleteStudent.jsp'>
      			<input type='hidden' name='rollNumber' >
      		<div class="row">
      			<label class="col-sm-4">Roll Number</label>
      			<span id="deleteStudentViewRollNumber" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Name</label>
      			<span id="deleteStudentViewName" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">City</label>
      			<span id="deleteStudentViewCity" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Gender</label>
      			<span id="deleteStudentViewGender" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">D.O.B.</label>
      			<span id="deleteStudentViewDOB" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Indian</label>
      			<span id="deleteStudentViewIsIndian" class="col-sm-8"></span>
      		</div>
      		<div class="row">
      			<label class="col-sm-4">Address</label>
      			<span id="deleteStudentViewAddress" class="col-sm-8"></span>
      		</div>
      	</div>
      	<center>
  <button type="submit" class="btn btn-success">DELETE</button>
</center>
</form>
      </div>
      <div class="modal-footer justify-content-center">
      </div>
    </div>
  </div>
</div>

<!--Edit Student Module-->
<button type="button" id="editStudentViewModalButton" class="btn btn-primary" data-toggle="modal" data-target="#editStudentViewModal" style="visibility: hidden;"></button>

<div class="modal fade" id="editStudentViewModal" tabindex="-1" role="dialog" aria-labelledby="editStudentViewModalLabel" aria-hidden="true">
  <div class="modal-dialog model-dialog-centered bg-dark" role="document">
    <div class="modal-content justify-content-center">
      <div class="modal-header">
        <h5 class="modal-title text-primary" id="editStudentViewModalLabel">EDIT STUDENT</h5>
        <button type="button" id="editStudentViewClose" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
<form action="/stylethree/EditStudent.jsp">
	<input type='hidden' id='eHiddenRoll' name='rollNumber'>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Roll Number</label>
    <span id='eroll' class="col-sm-10"></span>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" name="name" class="form-control" id="ename">
    </div>
  </div>
  <div class="form-group row">
      <label for="inputState" class="col-sm-2">City</label>
      <div class="col-sm-10">
      <select id="ect" name="cityCode" class="form-control">
        <option value="-1" selected>Choose...</option>
      </select>
    </div>
</div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="eml" value="M" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="efe" value="F">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">D.O.B.</label>
    <div class="col-sm-10">
      <input type="date" name="dateOfBirth" class="form-control" id="edob">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-2">Indian?</div>
    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" name="indian" type="checkbox" id="eind" value="true">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-10">
      <input type="textarea" rows="5" cols="50" name="address" row="4" class="form-control" id="eaddr">
    </div>
  </div>
  <center>
  <button type="submit" class="btn btn-primary">UPDATE</button>
</center>
</form>

      </div>
      <div class="modal-footer justify-content-center">
      </div>
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