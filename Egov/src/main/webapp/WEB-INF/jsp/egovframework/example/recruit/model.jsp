<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model</title>
</head>
<body>
	<!-- Loading Screen -->
	<div id="ju-loading-screen">
		<div class="sk-double-bounce">
			<div class="sk-child sk-double-bounce1"></div>
			<div class="sk-child sk-double-bounce2"></div>
		</div>
	</div>
	<%@ include file="/assets/includes/header.jsp"%><!-- header -->
	<!-- main contents -->
	<main>
		<div class="card text-center">
			<img class="card-img" src="/assets/custom/images/noimg.jpg"
				style="width: 100%; height: 300px; object-fit: cover" alt="...">
			<div class="card-img-overlay text-white"
				style="display: flex; align-items: center; justify-content: center;">
				<h1 class="card-title">Recruit</h1>
			</div>
		</div>
		<div class="container">
			<%@ include file="/assets/includes/tabRecruit.jsp"%><!-- tabs -->
			<!-- model -->
			<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
				<h1 class="display-4 fw-normal mt-5">Role model</h1>
			</div>
			<section>
				<div class="p-4">
					<div class="row gx-4 justify-content-center">
						<div class="col-lg-8">
							<h3>Vestibulum sit amet sapien ac felis elementum tempus.</h3>
							<p class="lead mt-3">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit. Quisque velit sapien, iaculis vel augue at,
								bibendum tristique risus. Vestibulum congue tristique tincidunt.
								Cras mi mauris, vehicula sit amet ligula in, vehicula fermentum
								mauris. Etiam congue commodo dictum. Quisque at interdum dui.
								Aliquam suscipit finibus turpis, quis bibendum tellus accumsan
								eget. Sed ligula magna, finibus id ligula id, ultrices efficitur
								sapien. Phasellus egestas risus et varius blandit.</p>
							<ul class="lead mt-5">
								<li>Mauris</li>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								<li>Aenean</li>
								<p>Aliquam blandit orci sit amet augue tempor, a hendrerit
									ante pharetra.</p>
								<li>Praesent</li>
								<p>Ut non dui at libero congue rhoncus at euismod velit.</p>
								<li>Curabitur</li>
								<p>Nulla accumsan tortor ut eros pellentesque condimentum.</p>
								<li>Donec</li>
								<p>Etiam auctor orci in lectus egestas tincidunt.</p>
							</ul>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	<%@ include file="/assets/includes/footer.jsp"%><!-- footer -->
</body>
</html>