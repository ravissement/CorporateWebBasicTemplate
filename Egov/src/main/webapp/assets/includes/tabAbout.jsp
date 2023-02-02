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
		<a class="nav-link <%= pageName.contains("greetings") ? "active" : "text-muted" %>" href="/about/greetings.do">greetings</a>
	</li>
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("philosophy") ? "active" : "text-muted" %>" href="/about/philosophy.do">philosophy</a>
	</li>
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("history") ? "active" : "text-muted" %>" href="/about/history.do">history</a>
	</li>
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("organization") ? "active" : "text-muted" %>" href="/about/organization.do">organization chart</a>
	</li>
	<li class="nav-item">
		<a class="nav-link <%= pageName.contains("maps") ? "active" : "text-muted" %>" href="/about/maps.do">sketch map</a>
	</li>
</ul>
</body>
</html>