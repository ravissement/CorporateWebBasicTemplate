<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maps</title>
</head>
<body>
<!-- Loading Screen -->
<div id="ju-loading-screen">
	<div class="sk-double-bounce">
		<div class="sk-child sk-double-bounce1"></div>
		<div class="sk-child sk-double-bounce2"></div>
	</div>
</div>
<%@ include file="/assets/includes/header.jsp" %><!-- header -->
<!-- main contents -->	
<main>
	<div class="card text-center">
		<img class="card-img" src="/assets/custom/images/noimg.jpg" style="width: 100%; height: 300px; object-fit:cover" alt="...">
		<div class="card-img-overlay text-white" style="display: flex; align-items: center; justify-content: center;">
			<h1 class="card-title">About</h1>
		</div>
	</div>
	<div class="container">
		<%@ include file="/assets/includes/tabAbout.jsp" %><!-- tabs -->
		<!-- google map -->
		<div class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5">Maps</h1>
		</div>
		<div style="height:700px; display: flex; align-items: center; justify-content: center;" class="bg-light">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.6116545807286!2d126.97538291558838!3d37.56421233201844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2f332cb082b%3A0xe92b70ac420cf0a8!2z7ISc7Jq47Yq567OE7Iuc7LKt!5e0!3m2!1sko!2skr!4v1675318248617!5m2!1sko!2skr" width="98%" height="98%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>