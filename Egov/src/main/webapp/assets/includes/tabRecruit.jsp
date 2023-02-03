<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
HttpServletRequest httpRequest = (HttpServletRequest) pageContext.getRequest();
String pageName = httpRequest.getRequestURI();
pageName = pageName.substring(pageName.lastIndexOf("/") + 1);
%>
<!-- tabs -->
<ul class="nav nav-tabs mt-2">
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("information") ? "active" : "text-muted" %>" href="/recruit/information.do">information</a>
	</li>
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("model") ? "active" : "text-muted" %>" href="/recruit/model.do">model</a>
	</li>
</ul>
</body>
</html>