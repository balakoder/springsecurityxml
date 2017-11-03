<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<title>Login</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<style type="text/css">
.error {
	color: #FF0000;
	font-weight: bold;
}

@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #4CAF50;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

body {
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>


<!--  
To successfully redirect from login page, if user is already logged in -->

<sec:authorize access="isAuthenticated()">
	<% response.sendRedirect("welcome"); %>
</sec:authorize>
<ul class="nav justify-content-center" style="padding: 10px;">


	<c:if test="${pageContext.request.userPrincipal.name != null}">

		<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
	</c:if>


	<c:if test="${pageContext.request.userPrincipal.name != null}">

		<li class="nav-item"><a class="nav-link" href="faq">Faq</a></li>
	</c:if>

	<c:if test="${pageContext.request.userPrincipal.name != null}">

		<li class="nav-item"><a class="nav-link" href="about">About</a></li>
	</c:if>

	<c:if test="${pageContext.request.userPrincipal.name != null}">

		<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
	</c:if>


	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form class="form-inline">
			<input class="form-control mr-sm-2" type="text" placeholder="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
		</li>
	</c:if>

	<%-- 	 <li class="nav-item"><a class="nav-link" href="logout">Welcome  ${user.username} Logout</a></li>
	<li>  
	 --%>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<li class="nav-item"><a class="nav-link" href="#">${pageContext.request.userPrincipal.name}
		</a></li>

		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

		<li class="nav-item"><a class="nav-link" href="#"
			onclick="document.forms['logoutForm'].submit()">logout</a>
	</c:if>






</ul>


