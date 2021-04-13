<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Ninja Gold Game</title>
</head>
<body>	
	<div class = "container">
		<div id="gold_tally" class="mt-4">
			<h3>Your Gold:</h3>
			<h3> <c:out value="${totalGold}"/> </h3>
		</div>
		<div id="locations" class="d-flex justify-content-around mt-5 mb-3">
			<div id="location" class=" d-flex align-items-center flex-column">
				<h3>Farm</h3>
				<h6>(earns 10-20 gold)</h6>
				<form action="/play" method="POST">
					<input type="hidden" value="farm" name="location">
					<input type="submit" class="btn btn-warning mt-3" value="Find Gold!">
				</form>
			</div>
			<div id="location" class=" d-flex align-items-center flex-column">
				<h3>Cave</h3>
				<h6>(earns 5-10 gold)</h6>
				<form action="/play" method="POST">
					<input type="hidden" value="cave" name="location">
					<input type="submit" class="btn btn-warning mt-3" value="Find Gold!">
				</form>
			</div>
			<div id="location" class=" d-flex align-items-center flex-column">
				<h3>House</h3>
				<h6>(earns 2-5 gold)</h6>
				<form action="/play" method="POST">
					<input type="hidden" value="house" name="location">
					<input type="submit" class="btn btn-warning mt-3" value="Find Gold!">
				</form>
			</div>
			<div id="location" class=" d-flex align-items-center flex-column">
				<h3>Casino!</h3>
				<h6>(earns/takes 0-50 gold)</h6>
				<form action="/play" method="POST">
					<input type="hidden" value="casino" name="location">
					<input type="submit" class="btn btn-warning mt-3" value="Find Gold!">
				</form>
			</div>
		</div>
		<h1>Activities:</h1>
		<div id="activities" class="mt-4">
		 <p>You earned <c:out value="${foundGold}"/> gold from <c:out value="${location}"/>!</p>
		</div>
	</div>
</body>
</html>
