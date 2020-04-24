<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Code Wall</title>
    <link rel="stylesheet" href="./css/blog.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
<nav>
	<img src="./assets/logo.svg" alt="logo"/>
	<ul>
		<li><a href="${pageContext.request.contextPath }/myblogs">My Blogs</a></li>
		<li><a href="${pageContext.request.contextPath }/allblogs">All Blogs</a></li>
		<li><a href="${pageContext.request.contextPath }/login">Login</a></li>
		<li><a href="${pageContext.request.contextPath }/signup">Sign Up</a></li>
	</ul>
</nav>
<div class="body-div1">
	<div>Your Blog Posts</div>
	<a href="${pageContext.request.contextPath }/new"><button class = "button" id = "addBlog"><i class="fas fa-plus-circle"></i>Add New Post</button></a>
</div>

<div class="body-div2">
	<c:forEach var="blog" items="${listBlog }">
	
		<div class="article-card">
			<img src="./assets/java card image.svg" alt="card">
			<div>
				<h1 id="blog-title"><c:out value="${blog.getBlogTitle() }"/></h1>
				<p id="blog-description"> <c:out value="${blog.getBlogDescription() }" /></p>
				<p>PostedOn <b><c:out value="${blog.getPostedOn() }" /></b></p>
			</div>
			<div class="card-button">
				<a href="edit?id=<c:out value='${blog.getBlogId() }'/>"><button type="button" id="edit">Edit</button></a>
				<a href="delete?id=<c:out value='${blog.getBlogId() }'/>"><button type="button" id="delete">Delete</button></a>
			</div>
		</div>
	</c:forEach>
</div>
</body>
</html>