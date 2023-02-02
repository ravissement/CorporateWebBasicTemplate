<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Greetings</title>
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
		<!-- greetings -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
		<h1 class="display-4 fw-normal mt-5">CEO Greetings</h1>
		</div>
		<div class="row g-0 position-relative mt-5 mb-4 mb-lg-0">
			<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative" style="min-height:400px;">
				<div class="pricing-header p-3 pb-md-4 mx-auto">
					<p class="fs-5 fw-normal">Phasellus eget ullamcorper erat. Sed porta id eros non accumsan.</p>
					<p class="fs-5 text-muted">
						Proin scelerisque ultrices elit vel porta. Aenean quis interdum lorem. Vestibulum bibendum sodales laoreet. Nunc felis velit, porttitor a laoreet eu, commodo sed elit. In at eros turpis. Fusce ipsum ex, tristique a enim et, faucibus euismod orci. Donec id elit tristique, aliquet sapien vel, tincidunt odio. Duis a quam metus. Cras vulputate suscipit nunc at pharetra. Etiam bibendum justo eu tortor ultrices, ut convallis sem aliquet. Duis aliquet vestibulum nunc, id tristique neque ultricies nec. In hac habitasse platea dictumst. Vivamus sed risus eget risus ultrices dapibus. Phasellus semper ex et eleifend interdum.
					</p>
					<p class="fs-5 text-muted">
						Nunc luctus dolor mi, et auctor nisi vulputate et. Suspendisse eu aliquam purus. Maecenas varius viverra metus, ut porta mi. Quisque id faucibus nibh. Cras pharetra lacus in lacus volutpat porta. Aliquam felis orci, porta non mi at, ultrices sodales nulla. Nulla id nisl ullamcorper, eleifend dui eu, fermentum ipsum. Proin pulvinar turpis sed nunc tempor, ullamcorper convallis dui consequat. In nec libero eu orci tincidunt facilisis id ac nisl. Ut ut nunc eu quam egestas scelerisque vitae blandit nunc. Duis sed mauris quis odio viverra hendrerit. Phasellus fermentum venenatis sapien, ut vestibulum orci pretium quis. Sed vel libero porttitor, luctus tortor vel, sodales augue.
					</p>
				</div>
			</div>
            <div class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg rounded-lg-be-0 rounded-lg-te-lg text-center">
				<img src="/assets/custom/images/noimg.jpg" />
				Autograph / photo
            </div>
		</div>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>