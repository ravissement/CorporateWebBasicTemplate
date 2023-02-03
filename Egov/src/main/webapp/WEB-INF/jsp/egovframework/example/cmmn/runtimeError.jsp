<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
html, body {height: 100%;}
body {display: flex; align-items: center; padding-top: 40px; padding-bottom: 40px; background-color: #f5f5f5;}
.form-error {width: 100%; max-width: 830px; padding: 15px; margin: auto;}
.form-error .checkbox {font-weight: 400;}
.form-error .form-floating:focus-within {z-index: 2;}
.form-error input[type="text"] {margin-bottom: -1px; border-bottom-right-radius: 0; border-bottom-left-radius: 0;}
.form-error input[type="password"] {margin-bottom: 10px; border-top-left-radius: 0; border-top-right-radius: 0;}
.bd-placeholder-img {font-size: 1.125rem; text-anchor: middle; -webkit-user-select: none; -moz-user-select: none; user-select: none;}
@media (min-width: 768px) { 
	.bd-placeholder-img-lg {
    	font-size: 3.5rem;
  	}
}
</style>
<!--For Commons Validator Client Side-->
<script type="text/javaScript" language="javascript" defer="defer">
	/* back function */
	function fn_egov_back() {
		history.go(-1);
	}
</script>
</head>
<body class="text-center">
<!-- Loading Screen -->
<div id="ju-loading-screen">
	<div class="sk-double-bounce">
		<div class="sk-child sk-double-bounce1"></div>
		<div class="sk-child sk-double-bounce2"></div>
	</div>
</div>
<!-- main contents -->	
<main class="form-error">
	<div class="mb-4 text-bg-secondary p-5"><h1>Corporate Logo</h1></div>
	<div class="form-floating m-5">
		<h1><c:out value="${msg }"></c:out></h1>
	</div>
	<a href="javascript:fn_egov_back();" class="mt-5 btn btn-primary w-25">이전으로</a>
	<p class="mt-5 mb-3 text-muted">© RAVISSEMENT </p>
</main>
</body>
</html>
