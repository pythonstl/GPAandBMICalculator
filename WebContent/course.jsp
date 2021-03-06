<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta charset="ISO-8859-1">
	<title>Courses</title>
	<script src="https://code.jquery.com/jquery-1.12.4js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
    $(function () {
        $('#datetimepicker1').datetimepicker();
    });
	</script>
	<style type="text/css">
		.weekdays-selector input{
			display: none!important;
		}
		.weekdays-selector input[type=checkbox] + label {
			display: inline-block;
			border-radius: 6px;
			background: #dddddd;
			height: 40px;
			width: 30px;
			margin-right: 3px;
			line-height: 40px;
			text-align: center;
			cursor: pointer;
		}
		.weekdays-selector input[type=checkbox]:checked + label {
			background: #2AD705;
			color: #ffffff;
		}
	</style>
</head>
<body>
	<!-- navbar --> 
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation.</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project Name</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="account.jsp">Account</a></li>
				</ul>
			</div>
		</div>
	</nav> 
	<!-- /navbar -->
	
	<div class="container">
		<div style="margin-top: 100px"></div>
		<div style="width: 300px">
			<br><br>
			<form action="SchedulerServlet" method="get">
			
				Courses
				<select class="form-control" name="courseName">
					<option value="C#">C#</option>
					<option value="C++">C++</option>
					<option value="C">C</option>
					<option value="Ruby on Rails">Ruby on Rails</option>
					<option value="PHP">PHP</option>
					<option value="SQL">SQL</option>
					<option value="JavaScript">JavaScript</option>
				</select>
				<br>
				
				Professors
				<select class="form-control" name="professor">
					<option value="John White">John White</option>
					<option value="Michael Brown">Michael Brown</option>
					<option value="Tina Doe">Tina Doe</option>
					<option value="Emily Winter">Emily Winter</option>
					<option value="Christine Summer">Christine Summer</option>
				</select>
				<br>
				
				Time
				<input type="text" id="time" name="time">
				<br>
				
				Room Number
				<input type="text" id="roomNumber" name="roomNumber">
				<br>
				
				Start Date
				<div class="container">
    				<div class="row">
       					<div class='col-sm-6'>
            				<div class="form-group">
                				<div class='input-group date' id='datetimepicker1'>
                    				<input type='text' class="form-control" name="startDate" />
                    					<span class="input-group-addon">
                        					<span class="glyphicon glyphicon-calendar"></span>
                    					</span>
                				</div>
            				</div>
        				</div>
    				</div>
				</div>
				<br>
				
				Weekdays
				<div class="weekdays-selector" name="weekdays">
					<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday" />
					<label for="weekday-mon">M</label>
					<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tues" class="weekday" />
					<label for="weekday-tues">T</label>
					<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wednes" class="weekday" />
					<label for="weekday-wednes">W</label>
					<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thurs" class="weekday" />
					<label for="weekday-thurs">R</label>
					<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday" />
					<label for="weekday-fri">F</label>
				</div>
				<br>
				
				<button type="submit">ADD COURSE</button>
				
			</form>
			<br><br>
			
			<c:if test="${courses != null}">
			<table class="table table-striped">
  				<thead>
    				<tr>
     					<th scope="col">#</th>
     					<th scope="col">Course Name</th>
     					<th scope="col">Start Date</th>
     					<th scope="col">Professor</th>
  						<th scope="col">Days</th>
  						<th scope="col">Room Number</th>
  						<th scope="col">Time</th>
    				</tr>
 				</thead>
  				<tbody>
  					<c:forEach var="course" items="${courses}">
    				<tr>
      					<th scope="row">1</th>
      					<td><c:out value="${course.courseName}"></c:out></td>
     					<td><c:out value="${course.startDate}"></c:out></td>
      					<td><c:out value="${course.professor}"></c:out></td>
      					<td><c:out value="${course.occurrences}"></c:out></td>
      					<td><c:out value="${course.roomNumber}"></c:out></td>
      					<td><c:out value="${course.time}"></c:out></td>
   					</tr>
   					</c:forEach>
  				</tbody>
			</table>
			</c:if>
		</div>
	</div>
</body>
</html>