<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="ravissement">
<meta name="author" content="ravissement">
<!-- Load Screen -->
<link href="/assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
	/* Remove default margin and padding for <html> and <body> */
	html{height: 100%;}
	body {min-height: 100%;}
	/* navigation style */
	.nav > .nav-item > .nav-link {color: black;}
	.nav > .nav-item > .nav-link:hover {font-weight: bold;}
	.nav > .nav-item > .active-red{font-weight: bold; color: red;}
</style>
</head>
<body>
<div class="sticky-top border-bottom" style="background-color:white; background-color: rgba( 255, 255, 255, 0.85);">
	<div class="container">
		<header class="d-flex flex-wrap justify-content-center py-2 mb-3">
			<a href="/egovAdmin/recruit/information.do" class="d-flex align-items-center mb-2 mb-md-0 me-md-auto text-decoration-none text-bg-secondary rounded">
				<span class="m-2">LOGO IMAGE</span>
			</a>
			<ul class="nav">
				<li class="nav-item dropdown">
					<a href="#" class="nav-link <%= request.getRequestURI().contains("recruit/") ? "active-red" : "" %>" data-toggle="dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Recruit</a>
					<ul class="dropdown-menu" aria-labelledby="sub-nav4">
	                    <li><a class="dropdown-item" href="/egovAdmin/recruit/information.do">information</a></li>
	                </ul>
				</li>
				<li class="nav-item dropdown">
					<a href="#" class="nav-link <%= request.getRequestURI().contains("client/") ? "active-red" : "" %>" data-toggle="dropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Client</a>
					<ul class="dropdown-menu" aria-labelledby="sub-nav4">
	                    <li><a class="dropdown-item" href="/egovAdmin/client/notice.do">notice</a></li>
	                </ul>
				</li>
				<li class="nav-item">
					<a href="/egovAdmin/logout.do" class="nav-link">Logout</a>
				</li>
			</ul>
		</header>
   </div>
</div>
</body>
</html>