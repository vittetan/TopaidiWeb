<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Add an idea</title>
</head>
<body>
	<div class="container">
		<form method="POST" action="">
			<input type="hidden" name="id" />
			<div class="form-group">
				<label for="title">Title</label> 
				<input type="text" class="form-control" id="title" name="title"	placeholder="Title of the idea">
			</div>
			<div class="form-group">
				<label for="description">Description</label> 
				<textarea rows="5" maxlength="255" class="form-control" id="description" name="description" placeholder="Description"></textarea>
			</div>
			<div class="form-group">
				<input type="text" name="img" id="img" placeholder="Enter the link to the image">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>