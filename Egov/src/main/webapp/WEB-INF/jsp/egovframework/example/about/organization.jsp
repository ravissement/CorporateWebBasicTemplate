<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Organization</title>
<style>
/* org chart lines style */
.right-line {border-right: 5px #ccc solid; height:2em}
.top-line {border-top: 5px #ccc solid;}
.halved {width: 50%; float:left;}
</style>
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
			<h1 class="card-title">Organization</h1>
		</div>
	</div>
	<div class="container">
		<%@ include file="/assets/includes/tabAbout.jsp" %><!-- tabs -->
		<!-- organization -->
		<div class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5">Organization</h1>
		</div>
		<div style="height:800px; display: flex; align-items: center; justify-content: center;" class="bg-light">
			<div class="container text-center">
				<div class="row">
					<div class="p-3 text-bg-danger">
						<div class="col-12 h1">Corporate Name</div>
			  		</div>
			  	</div>
			  	<div class="row mt-2">
			    	<div class="col-6 right-line"></div>
			    	<div class="col-6"></div>
			  	</div>
			  	<div class="row">
			    	<div class="col-3 p-0">
			      		<div class="halved right-line"></div>
			      		<div class="halved top-line"></div>
			    	</div>
			    	<div class="col-3 p-0">
			      		<div class="halved right-line top-line"></div>
			      		<div class="halved top-line"></div>
			    	</div>
			    	<div class="col-3 p-0">
			      		<div class="halved right-line top-line"></div>
			      		<div class="halved top-line"></div>
			    	</div>
			    	<div class="col-3 p-0">
			      		<div class="halved right-line top-line"></div>
			      		<div class="halved"></div>
			    	</div>
			  </div>
			  <div class="row">
				    <div class="col-3">
					    <div class="card mb-4 rounded-3 shadow-sm">
							<div class="card-header py-3 text-bg-primary">
							  <h4 class="my-0 fw-normal">Purchasing Dept</h4>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mt-3 mb-4 fs-5">
									<li>Vivamus</li>
									<li class="mt-2">Donec eu</li>
									<li class="mt-2">Nullam at</li>
									<li class="mt-2">Duis ultrices</li>
									<li class="mt-2">Aliquam in</li>
								</ul>
							</div>
						</div>
				    </div>
				    <div class="col-3">
				    	<div class="card mb-4 rounded-3 shadow-sm">
							<div class="card-header py-3 text-bg-info">
							  <h4 class="my-0 fw-normal">Executive Dept</h4>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mt-3 mb-4 fs-5">
									<li>Vivamus</li>
									<li class="mt-2">Donec eu</li>
									<li class="mt-2">Nullam at</li>
									<li class="mt-2">Duis ultrices</li>
								</ul>
							</div>
						</div>
					</div>
				    <div class="col-3">
				    	<div class="card mb-4 rounded-3 shadow-sm">
							<div class="card-header py-3 text-bg-success">
							  <h4 class="my-0 fw-normal">Accounting Dept</h4>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mt-3 mb-4 fs-5">
									<li>Vivamus</li>
									<li class="mt-2">Donec eu</li>
									<li class="mt-2">Nullam at</li>
									<li class="mt-2">Duis ultrices</li>
								</ul>
							</div>
						</div>
				    </div>
				    <div class="col-3">
				    	<div class="card mb-4 rounded-3 shadow-sm">
							<div class="card-header py-3 text-bg-dark">
							  <h4 class="my-0 fw-normal">R&D</h4>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mt-3 mb-4 fs-5">
									<li>Vivamus</li>
									<li class="mt-2">Donec eu</li>
									<li class="mt-2">Nullam at</li>
								</ul>
							</div>
						</div>
				    </div>
			  	</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>