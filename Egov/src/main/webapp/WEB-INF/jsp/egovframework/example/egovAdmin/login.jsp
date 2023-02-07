<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
html, body {height: 100%;}
body {display: flex; align-items: center; padding-top: 40px; padding-bottom: 40px; background-color: #f5f5f5;}
.form-signin {width: 100%; max-width: 330px; padding: 15px; margin: auto;}
.form-signin .checkbox {font-weight: 400;}
.form-signin .form-floating:focus-within {z-index: 2;}
.form-signin input[type="text"] {margin-bottom: -1px; border-bottom-right-radius: 0; border-bottom-left-radius: 0;}
.form-signin input[type="password"] {margin-bottom: 10px; border-top-left-radius: 0; border-top-right-radius: 0;}
.bd-placeholder-img {font-size: 1.125rem; text-anchor: middle; -webkit-user-select: none; -moz-user-select: none; user-select: none;}
@media (min-width: 768px) { 
	.bd-placeholder-img-lg {
    	font-size: 3.5rem;
  	}
}
</style>
<!--For Commons Validator Client Side-->
<script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
<validator:javascript formName="loginVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript" defer="defer">
	/* 로그인 function */
	function fn_egov_login() {
		frm = document.detailForm;
		if(!validateLoginVO(frm)){
	        return;
	    }else{
		   	frm.action = "<c:url value='/egovAdmin/login.do'/>";
		   	frm.submit();
	    }
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
<main class="form-signin">
	<form:form commandName="loginVO" id="detailForm" name="detailForm">
		<div class="mb-4 text-bg-secondary p-2"><h3>Corporate Logo</h3></div>
		<div class="form-floating">
			<form:input path="id" id="floatingInput" class="form-control" placeholder="ID" maxlength="20"/>
		<label for="floatingInput">ID</label>
		&nbsp;<form:errors path="id" />
		</div>
		<div class="form-floating">
			<form:input path="pw" maxlength="20" id="floatingPassword" class="form-control" type="password" placeholder="PW"/>
		<label for="floatingPassword">PW</label>
		&nbsp;<form:errors path="pw" />
		</div>
		<a href="javascript:fn_egov_login();" class="btn btn-primary w-100"><spring:message code="button.login" /></a>
		<p class="mt-5 mb-3 text-muted">© 2023 RAVISSEMENT rights Reserved</p>
	</form:form>
</main>
</body>
</html>