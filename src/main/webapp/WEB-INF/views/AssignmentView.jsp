<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
 content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-
TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<title>Bicycle Booking</title>
</head>
<body>
	<nav class="navbar navbar-light bg-dark">
		<span class="navbar-text">
 			<h1 style="text-align:center; color: #eee">Bicycle Booking</h1>
		</span>
	</nav>
	<br>
	<div class="container">
		<form method="POST" action="/confirmation" modelAttribute="bicycleData">
			<div class="row">
				<c:choose>
						<c:when test="${ modelName == null }">
							<div class="col-sm-3"></div>
							<div class="col-sm-6 p-4 mx-4" style="border-radius: 15px; box-shadow: 0 0 35px rgba(0, 0, 0, 0.1); margin: 0">
						</c:when>
						<c:otherwise>
							<div class="col p-4 mx-4" style="border-radius: 15px; box-shadow: 0 0 35px rgba(0, 0, 0, 0.1)">
						</c:otherwise>
				</c:choose>
					<div class="row my-4">
						<div class="col-sm-5">
							<label for="firstName">First Name : </label>
						</div>
						<div class="col-sm-7">
							<form:input type="text" path="bicycleData.firstName" id="firstName"  min="2" required="true"/>
							<form:errors path="firstName" style="color:red" />
						</div>
					</div>
					<div class="row my-4">
						<div class="col-sm-5">
							<label for="lastName">Last Name : </label>
						</div>
						<div class="col-sm-7">
							<form:input type="text" path="bicycleData.lastName" id="lastName" min="2" required="true"/>
							<form:errors path="lastName" style="color:red" />
						</div>
					</div>
					<div class="row my-4">
						<div class="col-sm-5">
							<label for="model">Bike Model : </label>
						</div>
						<div class="col-sm-7">
							<form:radiobutton path="bicycleData.model" value="1" required="true"/> Utility Bike
							<br>
							<form:radiobutton path="bicycleData.model" value="2" /> Fixed Gear Bike
							<br>
							<form:radiobutton path="bicycleData.model" value="3" /> Mountain Bike
						</div>
					</div>
					<div class="row my-4">
						<div class="col-sm-5">
							<label for="model">Are you a senior citizen? </label>
						</div>
						<div class="col-sm-7">
							<form:radiobutton path="bicycleData.senior" value="true" required="true"/> Yes
							<br>
							<form:radiobutton path="bicycleData.senior" /> No
						</div>
					</div>
					<div class="row my-4">
						<div class="col-sm-5">
							<label for="model">Are you a member? </label>
						</div>
						<div class="col-sm-7">
							<form:radiobutton path="bicycleData.member" value="true" required="true"/> Yes
							<br>
							<form:radiobutton path="bicycleData.member" /> No
						</div>
					</div>
					<div class="row my-4">
						<div class="col text-center">
							<input type="submit" value="Submit" class="btn btn-primary btn-sm"/>
						</div>
					</div>
				</div>
				<c:if test="${ modelName != null }">
					<div class="col p-4 mx-4" style="border-radius: 15px; box-shadow: 0 0 35px rgba(0, 0, 0, 0.1)">
						<div class="row my-4">
							<div class="col-sm-6">
								<label for="name">Full Name : </label>
							</div>
							<div class="col-sm-5" style="border-bottom: 1px solid black;">
								${firstName} ${lastName}
							</div>
						</div>
						<div class="row my-4">
							<div class="col-sm-6">
								<label for="name">Membership Status : </label>
							</div>
							<div class="col-sm-5" style="border-bottom: 1px solid black;">
								<c:choose>
										<c:when test="${ member == true }">Is a member</c:when>
										<c:otherwise>Not a member</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="row my-4">
							<div class="col-sm-6">
								<label for="name">Senior citizen status : </label>
							</div>
							<div class="col-sm-5" style="border-bottom: 1px solid black;">
								<c:choose>
										<c:when test="${ senior == true }">Is a senior citizen</c:when>
										<c:otherwise>No, not that old</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="row my-4">
							<div class="col-sm-6">
								<label for="name">Bike model selected : </label>
							</div>
							<div class="col-sm-5" style="border-bottom: 1px solid black;">
								${modelName}
							</div>
						</div>
						<br>
						<div class="row my-1" style="text-align: right">
							<div class="col-sm-8">
								<label for="name">Bike Amount (Inc. Tax) : </label>
							</div>
							<div class="col-sm-4">
								$${modelPrice}
								<br>
							</div>
						</div>
						<c:if test="${ senior == true }">
							<div class="row my-1" style="text-align: right">
								<div class="col-sm-8">
									<label for="name">Senior Citizen Discount (20%) : </label>
								</div>
								<div class="col-sm-4">
									-$${seniorDiscount}
									<br>
								</div>
							</div>
						</c:if>
						<c:if test="${ member == true }">
							<div class="row my-1" style="text-align: right">
								<div class="col-sm-8">
									<label for="name">Member Discount (30%) : </label>
								</div>
								<div class="col-sm-4">
									-$${memberDiscount}
									<br>
								</div>
							</div>
						</c:if>
						<div class="row my-4" style="text-align: right">
							<div class="col-sm-8">
								<label for="name"><b>Grant Total : </b></label>
							</div>
							<div class="col-sm-4">
								<b>$${finalPrice}</b>
								<br>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>