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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<title>IdeaController</title>
</head>
<body>
	<br>
	<div class="container">
		<h1>Idea list</h1>
		<ul class="list-group">
				<div class="row border-top">
					<c:forEach items="${ideaList}" var="idea">
						<div class="col-8 border-bottom border-left">
							<h5 class="mb-1">${idea.title}</h5>
							<p class="mb-1">Description : ${idea.description}</p>
						</div>
						<div class="col-4 border-bottom border-right">
							<c:if test="${idea.image == null}">
								<img src="https://freerangestock.com/sample/38789/lightbulb-with-idea-concept-icon.jpg" alt="${idea.title}"
									height="100" width="auto">
							</c:if>
							<c:if test="${idea.image != null}">
								<img src="${idea.image}" alt="${idea.title}" height="100" width="auto">
							</c:if>
						</div>
					</c:forEach>
				</div>
		</ul>
		<br> <a type="button" class="btn btn-primary"
			href="?action=create">New Idea</a>

	</div>
</body>
</html>