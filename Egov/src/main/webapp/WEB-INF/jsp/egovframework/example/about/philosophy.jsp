<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Philosophy</title>
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
		<!-- chapter 1 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Philosophy</h1>
			<p class="fs-5 text-muted">Fusce ipsum ex, tristique</p>
			<p class="fs-5 text-muted">faucibus euismod orci. Donec id elit tristique</p>
		</div>
		<div style="display: flex; align-items: center; justify-content: center;">
			<div class="row w-100">
		        <div class="col-lg-4 text-center mb-5">
					<img class="rounded-circle" src="/assets/custom/images/noimg.jpg" alt="Generic placeholder image" width="240" height="240">
					<h3>Ultrices</h3>
					<p>Duis a quam metus</p>
		        </div><!-- /.col-lg-4 -->
		        <div class="col-lg-4 text-center mb-5">
					<img class="rounded-circle" src="/assets/custom/images/noimg.jpg" alt="Generic placeholder image" width="240" height="240">
					<h2>Vel porta</h2>
					<p>Suspendisse eu aliquam purus</p>
		        </div><!-- /.col-lg-4 -->
		        <div class="col-lg-4 text-center mb-5">
					<img class="rounded-circle" src="/assets/custom/images/noimg.jpg" alt="Generic placeholder image" width="240" height="240">
					<h2>Vestibulum</h2>
					<p>Maecenas varius viverra metus</p>
		        </div><!-- /.col-lg-4 -->
	      	</div>
		</div>
		<!-- chapter 2 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Nunc luctus</h1>
			<p class="fs-5 text-muted">Mauris nulla venenatis tortor</p>
			<p class="fs-5 text-muted">Eu pulvinar sapien turpis in lectus</p>
		</div>
		<div class="mt-5" style="display: flex; align-items: center; justify-content: center;">
			<div class="row mb-2 col-md-6 w-75">
			    <div>
			      	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				        <div class="col p-4 d-flex flex-column position-static">
							<h3 class="mb-0">Integer vitae nunc at lorem</h3>
							<p class="card-text mb-auto">Urna pulvinar tincidunt nec in purus. Proin sodales tristique cursus.</p>
				        </div>
				        <div class="col-auto d-none d-lg-block">
				         	<svg class="bd-placeholder-img" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: venenatis" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="40%" y="50%" fill="#eceeef" dy=".3em" class="h3">Venenas</text></svg>
				        </div>
			      	</div>
			    </div>
			    <div>
			      	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				        <div class="col p-4 d-flex flex-column position-static">
							<h3 class="mb-0">Etiam ultrices augue pellentesque</h3>
							<p class="card-text mb-auto">Integer vitae nunc at lorem molestie ornare quis quis orci.</p>
				        </div>
				        <div class="col-auto d-none d-lg-block">
				         	<svg class="bd-placeholder-img" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: sodales" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="40%" y="50%" fill="#eceeef" dy=".3em" class="h3">Sodales</text></svg>
				        </div>
			      	</div>
			    </div>
			    <div>
			      	<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				        <div class="col p-4 d-flex flex-column position-static">
							<h3 class="mb-0">Consectetur eros est in massa</h3>
							<p class="card-text mb-auto">Ut dictum quam elit, eu porttitor tellus tempor commodo.</p>
				        </div>
				        <div class="col-auto d-none d-lg-block">
				         	<svg class="bd-placeholder-img" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: pellentesque" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="40%" y="50%" fill="#eceeef" dy=".3em" class="h3">Pellens</text></svg>
				        </div>
			      	</div>
			    </div>
		  	</div>
		</div>
		<!-- chapter 3 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Vestibulum</h1>
			<p class="fs-5 text-muted">Fusce ipsum ex, tristique a enim et, faucibus euismod orci</p>
		</div>
		<div style="display: flex; align-items: center; justify-content: center;" class="bg-light">
			
			<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
			    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
					<div class="my-3 p-3">
						<h2 class="display-5">First</h2>
						<p class="lead">Nullam at dui et massa venenatis interdum</p>
					</div>
					<div class="text-bg-primary shadow-sm mx-auto p-3 text-start" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
						<p><h5>Etiam eu orci dictum</h5></p>
						<p><h5>Duis id sem a velit feugiat</h5></p>
						<p><h5>Porttitor augue lacinia, bibendum quam</h5></p>
					</div>
			    </div>
			    <div class="bg-primary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
					<div class="my-3 py-3">
						<h2 class="display-5">Second</h2>
						<p class="lead">Duis id sem a velit feugiat cursus at a purus.</p>
					</div>
			      	<div class="text-bg-light shadow-sm mx-auto p-3 text-start" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
			      		<p><h5>Etiam eu orci dictum</h5></p>
						<p><h5>Duis id sem a velit feugiat</h5></p>
						<p><h5>Porttitor augue lacinia, bibendum quam</h5></p>
			      	</div>
			    </div>
			    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
					<div class="my-3 p-3">
						<h2 class="display-5">Third</h2>
						<p class="lead">Nunc in ex et arcu pharetra efficitur.</p>
					</div>
					<div class="text-bg-primary shadow-sm mx-auto p-3 text-start" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
						<p><h5>Etiam eu orci dictum</h5></p>
						<p><h5>Duis id sem a velit feugiat</h5></p>
						<p><h5>Porttitor augue lacinia, bibendum quam</h5></p>
					</div>
			    </div>
			  </div>
		</div>
		<!-- chapter 4 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Aliquam</h1>
			<p class="fs-5 text-muted">Duis id sem a velit</p>
		</div>
		<div style="display: flex; align-items: center; justify-content: center;">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 w-100">
				<div class="col">
					<div class="card shadow-sm">
						<div class="text-bg-info text-center w-100" style="height:175px;">
							<h3 class="mt-5 text-light">Phasellus ut</h3>
						</div>
			 			<div class="card-body">
							<p class="card-text text-center h5">Maecenas fermentum</p>
					   		<p class="card-text text-center h5">Proin sit amet tortor</p>
					   	<div class="d-flex justify-content-between align-items-center">
					     	<div class="btn-group">
					     	</div>
					   	</div>
					  </div>
					</div>
		        </div>
		        <div class="col">
					<div class="card shadow-sm">
						<div class="text-bg-info text-center" style="height:175px;">
							<h3 class="mt-5 text-light">Duis id sem</h3>
						</div>
			 			<div class="card-body">
							<p class="card-text text-center h5">Maecenas fermentum</p>
					   		<p class="card-text text-center h5">Proin sit amet tortor</p>
					   	<div class="d-flex justify-content-between align-items-center">
					     	<div class="btn-group">
					     	</div>
					   	</div>
					  </div>
					</div>
		        </div>
		        <div class="col">
					<div class="card shadow-sm">
						<div class="text-bg-info text-center" style="height:175px;">
							<h3 class="mt-5 text-light">Quis nisi suscipit</h3>
						</div>
			 			<div class="card-body">
							<p class="card-text text-center h5">Maecenas fermentum</p>
					   		<p class="card-text text-center h5">Proin sit amet tortor</p>
					   	<div class="d-flex justify-content-between align-items-center">
					     	<div class="btn-group">
					     	</div>
					   	</div>
					  </div>
					</div>
		        </div>
	        </div>
		</div>
		<!-- chapter 5 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Praesent eu</h1>
			<p class="fs-5 text-muted">Maecenas quis ligula</p>
			<p class="fs-5 text-muted">Aliquam tristique nibh</p>
		</div>
		<div style=" display: flex; align-items: center; justify-content: center;" class="bg-light">
			<div class="card text-white bg-danger mb-3 mx-2" style="width: 18rem; max-width: 20rem;">
				<div class="card-header h5">Aliquam varius</div>
				<div class="card-body">
					<h6>Cras at lorem tempor</h6>
					<h6>Praesent vitae dolor</h6>
					<h6>Praesent pretium risus</h6>
					<h6>Sed id tortor non leo</h6>
				</div>
			</div>
			<div class="card text-white bg-warning mb-3 mx-2" style="width: 18rem; max-width: 20rem;">
				<div class="card-header h5">Aliquam varius</div>
				<div class="card-body">
					<h6>Cras at lorem tempor</h6>
					<h6>Praesent vitae dolor</h6>
					<h6>Praesent pretium risus</h6>
					<h6>Sed id tortor non leo</h6>
				</div>
			</div>
			<div class="card text-white bg-info mb-3 mx-2" style="width: 18rem; max-width: 20rem;">
				<div class="card-header h5">Aliquam varius</div>
				<div class="card-body">
					<h6>Cras at lorem tempor</h6>
					<h6>Praesent vitae dolor</h6>
					<h6>Praesent pretium risus</h6>
					<h6>Sed id tortor non leo</h6>
				</div>
			</div>
			<div class="card text-white bg-primary mb-3 mx-2" style="width: 18rem; max-width: 20rem;">
				<div class="card-header h5">Aliquam varius</div>
				<div class="card-body">
					<h6>Cras at lorem tempor</h6>
					<h6>Praesent vitae dolor</h6>
					<h6>Praesent pretium risus</h6>
					<h6>Sed id tortor non leo</h6>
				</div>
			</div>
		</div>
		<!-- chapter 6 -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center mb-5">
			<h1 class="display-4 fw-normal mt-5">Donec eu augue</h1>
			<p class="fs-5 text-muted">Integer ac nunc et ante accumsan pulvinar.</p>
			<p class="fs-5 text-muted">Proin gravida leo vel velit bibendum, ac lacinia ex ornare.</p>
		</div>
		<div style="display: flex; align-items: center; justify-content: center;" class="bg-light">
			<ul class="list-group list-group-flush w-75">
				<li class="list-group-item h3 text-center text-bg-secondary">Vestibulum in sapien</li>
				<li class="list-group-item mt-3">Vivamus ac orci eget arcu ultrices pharetra quis vitae nibh.</li>
				<li class="list-group-item mt-3">Integer a quam et augue suscipit tincidunt at eu elit.</li>
				<li class="list-group-item mt-3">Nullam at mauris porttitor, auctor lacus sit amet, pulvinar elit.</li>
				<li class="list-group-item mt-3">Praesent in massa vel est sodales posuere.</li>
				<li class="list-group-item mt-3">Praesent tristique diam sed magna blandit efficitur.</li>
				<li class="list-group-item mt-3">Duis ultrices nisi id tortor rhoncus, eget tristique libero feugiat.</li>
				<li class="list-group-item fs-5 mt-3 text-center text-success"><p>Sed aliquet libero vitae ullamcorper luctus.</p><p>Donec eu augue et libero luctus euismod in vel nunc.</p></li>
			</ul>
		</div>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>