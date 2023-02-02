<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>History</title>
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
		<!-- history -->
		<div class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5 mb-5">History</h1>
		</div>
		<div style="display: flex; align-items: center; justify-content: center;">
			<div class="px-5 w-100">
                <div class="text-uppercase-expanded small mb-2">Experience</div>
                <hr class="mt-0 mb-5">
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Donec eu augue et libero</h4>
                        <p class="lead"></p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">April 2015 - Present</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">October 2013</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">April 2011</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">June 2010</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">September 2005</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">March 2004</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">July 2003</div></div>
                </div>
                <div class="row gx-5 mb-5">
                    <div class="col-lg-8">
                        <h4 class="mb-0">Proin gravida leo vel velit bibendum</h4>
                        <p class="lead">Integer ac nunc et ante accumsan pulvinar</p>
                        <p></p>
                    </div>
                    <div class="col-lg-4 text-lg-end"><div class="text-gray-400 small">April 2002</div></div>
                </div>
            </div>
		</div>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>