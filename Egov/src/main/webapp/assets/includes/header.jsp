<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="nyinfotech">
<meta name="author" content="ravissement">
<!-- Load Screen -->
<link href="/assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
	/* Remove default margin and padding for <html> and <body> */
	html{height: 100%;}
	body {min-height: 100%;}
	/* navigation style */
	.nav > .nav-item > .nav-link {color: gray; font-weight: bold;}
	.nav > .nav-item > .nav-link:hover {color: black;}
	.nav > .nav-item > .active-red{font-weight: bold; color: red;}
	.nav > .nav-item > .active-blue{font-weight: bold; color: blue;}
</style>
</head>
<body>
<div class="sticky-top border-bottom" style="background-color:white; background-color: rgba( 255, 255, 255, 0.85);">
	<div class="container">
		<header class="d-flex flex-wrap justify-content-center py-2 mb-3">
			<a href="/" class="d-flex align-items-center mb-2 mb-md-0 me-md-auto text-decoration-none text-bg-secondary rounded">
					<span class="m-2">LOGO IMAGE</span>
			</a>
			<ul class="nav">
				<li class="nav-item dropdown">
					<a href="#" class="nav-link <%= request.getRequestURI().contains("company/") ? "active-red" : "" %>" data-toggle="dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">About</a>
					<ul class="dropdown-menu" aria-labelledby="sub-nav1">
	                    <li><a class="dropdown-item" href="/about/greetings.do">greetings</a></li>
	                    <li><a class="dropdown-item" href="/about/philosophy.do">philosophy</a></li>
	                    <li><a class="dropdown-item" href="/about/history.do">history</a></li>
	                    <li><a class="dropdown-item" href="/about/organization.do">organization chart</a></li>
	                    <li><a class="dropdown-item" href="/about/maps.do">sketch map</a></li>
	                </ul>
				</li>
			</ul>
		</header>
   </div>
</div>
</body>
</html>