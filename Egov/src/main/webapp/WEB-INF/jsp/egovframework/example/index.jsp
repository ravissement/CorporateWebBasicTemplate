<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Corporate Name</title>
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
		<!-- slide show -->
		<div id="carouselExampleCaptions" class="carousel slide carousel-fade"
			data-bs-ride="carousel" data-bs-pause="false">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="3000">
					<div class="text-bg-secondary text-center"
						style="width: 100%; height: 40vh; line-height: 200px; font-size: 2rem;"
						onclick="moveScroll(1)">First Image</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>Our Service</h5>
						<p>Introduce your business.</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<div class="text-bg-secondary text-center"
						style="width: 100%; height: 40vh; line-height: 200px; font-size: 2rem;"
						onclick="moveScroll(2)">Second Image</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>Our Solution</h5>
						<p>Introduce your solution.</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<div class="text-bg-secondary text-center"
						style="width: 100%; height: 40vh; line-height: 200px; font-size: 2rem;"
						onclick="moveScroll(3)">Third Image</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>Last News</h5>
						<p>Introduce your last news.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- business card -->
		<div class="container mt-5">
			<div class="pricing-header p-3 pb-md-4 mx-auto text-center">
				<h1 class="display-4 fw-normal" id="scrollNumber1">Our Service</h1>
				<p class="fs-5 text-muted">Nam venenatis lorem at finibus
					consequat</p>
				<p class="fs-5 text-muted">Integer et purus sit amet quam
					volutpat pellentesque sed vel nulla.</p>
			</div>
			<div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-bg-info">
							<h4 class="my-0 fw-normal">Card 1</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button" class="w-100 btn btn-lg btn-outline-info"
								onclick="location.href = 'business/si.do'">View Details</button>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-bg-secondary">
							<h4 class="my-0 fw-normal">Card 2</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button"
								class="w-100 btn btn-lg btn-outline-secondary"
								onclick="location.href = 'business/fa.do'">View Details</button>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm border-primary">
						<div class="card-header py-3 text-bg-primary border-primary">
							<h4 class="my-0 fw-normal">Card 3</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button"
								class="w-100 btn btn-lg btn-outline-primary"
								onclick="location.href = 'business/control.do'">View
								Details</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-bg-success">
							<h4 class="my-0 fw-normal">Card 4</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button"
								class="w-100 btn btn-lg btn-outline-success"
								onclick="location.href = 'business/comm.do'">View
								Details</button>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm">
						<div class="card-header py-3 text-bg-warning">
							<h4 class="my-0 fw-normal">Card 5</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button"
								class="w-100 btn btn-lg btn-outline-warning"
								onclick="location.href = 'business/network.do'">View
								Details</button>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm border-primary">
						<div class="card-header py-3 text-bg-dark">
							<h4 class="my-0 fw-normal">Card 6</h4>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mt-3 mb-4">
								<li>Proin vel magna id</li>
								<li>magna fringilla porta</li>
								<li>Nulla consequat sapien vel lacus tincidunt</li>
								<li>sed efficitur orci euismod</li>
							</ul>
							<button type="button" class="w-100 btn btn-lg btn-outline-dark"
								onclick="location.href = 'business/solution.do'">View
								Details</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- solution card -->
		<div
			class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5" id="scrollNumber2">Solution</h1>
			<p class="fs-5 text-muted">Sed ut augue at mi mollis semper</p>
			<p class="fs-5 text-muted">Quisque ut quam ac mauris vulputate
				consectetur vel et tellus.</p>
		</div>
		<div class="container mt-5">
			<div class="row g-0 position-relative mt-5 mb-4 mb-lg-0">
				<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative"
					style="min-height: 400px;">
					<div
						class="text-bg-secondary rounded-ts-lg rounded-te-lg rounded-lg-te-0 w-100 text-center"
						style="min-height: 400px; line-height: 300px; font-size: 2rem;">Background
						Image</div>
					<!--/.bg-holder-->
				</div>
				<div
					class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg rounded-lg-be-0 rounded-lg-te-lg ">
					<div class="elixir-caret d-none d-lg-block"></div>
					<div class="d-flex align-items-center h-100">
						<div data-zanim-timeline="{}">
							<div class="overflow-hidden">
								<h5 data-zanim-xs="{&quot;delay&quot;:0}"
									style="transform: translate(0px, 0px); opacity: 1;">Card 1</h5>
							</div>
							<div class="overflow-hidden">
								<p class="mt-3" data-zanim-xs="{&quot;delay&quot;:0.1}"
									style="transform: translate(0px, 0px); opacity: 1;">Sed
									sollicitudin mauris vitae ante molestie, ut pellentesque turpis
									placerat.</p>
							</div>
							<div class="overflow-hidden">
								<div data-zanim-xs="{&quot;delay&quot;:0.2}"
									style="transform: translate(0px, 0px); opacity: 1;">
									<a class="d-flex align-items-center"
										style="text-decoration: none" href="solution/mcis.do">Learn
										More
										<div class="overflow-hidden ms-2">
											<span class="d-inline-block"
												data-zanim-xs="{&quot;from&quot;:{&quot;opacity&quot;:0,&quot;x&quot;:-30},&quot;to&quot;:{&quot;opacity&quot;:1,&quot;x&quot;:0},&quot;delay&quot;:0.8}"
												style="transform: translate(0px, 0px); opacity: 1;">⟶</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-0 position-relative mb-4 mb-lg-0">
				<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative order-lg-2"
					style="min-height: 400px;">
					<div
						class="text-bg-secondary rounded-ts-lg rounded-te-lg rounded-lg-te-0 w-100 text-center"
						style="min-height: 400px; line-height: 300px; font-size: 2rem;">Background
						Image</div>
					<!--/.bg-holder-->
				</div>
				<div
					class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg  rounded-lg-be-0">
					<div class="elixir-caret d-none d-lg-block"></div>
					<div class="d-flex align-items-center h-100">
						<div data-zanim-timeline="{}">
							<div class="overflow-hidden">
								<h5 data-zanim-xs="{&quot;delay&quot;:0}"
									style="transform: translate(0px, 0px); opacity: 1;">Card 2</h5>
							</div>
							<div class="overflow-hidden">
								<p class="mt-3" data-zanim-xs="{&quot;delay&quot;:0.1}"
									style="transform: translate(0px, 0px); opacity: 1;">Sed
									sollicitudin mauris vitae ante molestie, ut pellentesque turpis
									placerat.</p>
							</div>
							<div class="overflow-hidden">
								<div data-zanim-xs="{&quot;delay&quot;:0.2}"
									style="transform: translate(0px, 0px); opacity: 1;">
									<a class="d-flex align-items-center"
										style="text-decoration: none" href="solution/home.do">Learn
										More
										<div class="overflow-hidden ms-2">
											<span class="d-inline-block"
												data-zanim-xs="{&quot;from&quot;:{&quot;opacity&quot;:0,&quot;x&quot;:-30},&quot;to&quot;:{&quot;opacity&quot;:1,&quot;x&quot;:0},&quot;delay&quot;:0.8}"
												style="transform: translate(0px, 0px); opacity: 1;">⟶</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-0 position-relative mb-4 mb-lg-0">
				<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative"
					style="min-height: 400px;">
					<div
						class="text-bg-secondary rounded-ts-lg rounded-te-lg rounded-lg-te-0 w-100 text-center"
						style="min-height: 400px; line-height: 300px; font-size: 2rem;">Background
						Image</div>
					<!--/.bg-holder-->
				</div>
				<div
					class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg  ">
					<div class="elixir-caret d-none d-lg-block"></div>
					<div class="d-flex align-items-center h-100">
						<div data-zanim-timeline="{}">
							<div class="overflow-hidden">
								<h5 data-zanim-xs="{&quot;delay&quot;:0}"
									style="transform: translate(0px, 0px); opacity: 1;">Card 3</h5>
							</div>
							<div class="overflow-hidden">
								<p class="mt-3" data-zanim-xs="{&quot;delay&quot;:0.1}"
									style="transform: translate(0px, 0px); opacity: 1;">Sed
									sollicitudin mauris vitae ante molestie, ut pellentesque turpis
									placerat.</p>
							</div>
							<div class="overflow-hidden">
								<div data-zanim-xs="{&quot;delay&quot;:0.2}"
									style="transform: translate(0px, 0px); opacity: 1;">
									<a class="d-flex align-items-center"
										style="text-decoration: none" href="solution/sicalis.do">Learn
										More
										<div class="overflow-hidden ms-2">
											<span class="d-inline-block"
												data-zanim-xs="{&quot;from&quot;:{&quot;opacity&quot;:0,&quot;x&quot;:-30},&quot;to&quot;:{&quot;opacity&quot;:1,&quot;x&quot;:0},&quot;delay&quot;:0.8}"
												style="transform: translate(0px, 0px); opacity: 1;">⟶</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-0 position-relative mb-4 mb-lg-0">
				<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative order-lg-2"
					style="min-height: 400px;">
					<div
						class="text-bg-secondary rounded-ts-lg rounded-te-lg rounded-lg-te-0 w-100 text-center"
						style="min-height: 400px; line-height: 300px; font-size: 2rem;">Background
						Image</div>
					<!--/.bg-holder-->
				</div>
				<div
					class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg  rounded-lg-be-0">
					<div class="elixir-caret d-none d-lg-block"></div>
					<div class="d-flex align-items-center h-100">
						<div data-zanim-timeline="{}">
							<div class="overflow-hidden">
								<h5 data-zanim-xs="{&quot;delay&quot;:0}"
									style="transform: translate(0px, 0px); opacity: 1;">Card 4</h5>
							</div>
							<div class="overflow-hidden">
								<p class="mt-3" data-zanim-xs="{&quot;delay&quot;:0.1}"
									style="transform: translate(0px, 0px); opacity: 1;">Sed
									sollicitudin mauris vitae ante molestie, ut pellentesque turpis
									placerat.</p>
							</div>
							<div class="overflow-hidden">
								<div data-zanim-xs="{&quot;delay&quot;:0.2}"
									style="transform: translate(0px, 0px); opacity: 1;">
									<a class="d-flex align-items-center"
										style="text-decoration: none" href="solution/ibm.do">Learn
										More
										<div class="overflow-hidden ms-2">
											<span class="d-inline-block"
												data-zanim-xs="{&quot;from&quot;:{&quot;opacity&quot;:0,&quot;x&quot;:-30},&quot;to&quot;:{&quot;opacity&quot;:1,&quot;x&quot;:0},&quot;delay&quot;:0.8}"
												style="transform: translate(0px, 0px); opacity: 1;">⟶</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-0 position-relative mb-4 mb-lg-0">
				<div class="col-lg-6 py-3 py-lg-0 mb-0 position-relative"
					style="min-height: 400px;">
					<div
						class="text-bg-secondary rounded-ts-lg rounded-te-lg rounded-lg-te-0 w-100 text-center"
						style="min-height: 400px; line-height: 300px; font-size: 2rem;">Background
						Image</div>
					<!--/.bg-holder-->
				</div>
				<div
					class="col-lg-6 px-lg-5 py-lg-6 p-4 my-lg-0 bg-white rounded-bs-lg rounded-lg-bs-0 rounded-be-lg  ">
					<div class="elixir-caret d-none d-lg-block"></div>
					<div class="d-flex align-items-center h-100">
						<div data-zanim-timeline="{}">
							<div class="overflow-hidden">
								<h5 data-zanim-xs="{&quot;delay&quot;:0}"
									style="transform: translate(0px, 0px); opacity: 1;">Card 5</h5>
							</div>
							<div class="overflow-hidden">
								<p class="mt-3" data-zanim-xs="{&quot;delay&quot;:0.1}"
									style="transform: translate(0px, 0px); opacity: 1;">Sed
									sollicitudin mauris vitae ante molestie, ut pellentesque turpis
									placerat.</p>
							</div>
							<div class="overflow-hidden">
								<div data-zanim-xs="{&quot;delay&quot;:0.2}"
									style="transform: translate(0px, 0px); opacity: 1;">
									<a class="d-flex align-items-center"
										style="text-decoration: none" href="solution/websRay.do">Learn
										More
										<div class="overflow-hidden ms-2">
											<span class="d-inline-block"
												data-zanim-xs="{&quot;from&quot;:{&quot;opacity&quot;:0,&quot;x&quot;:-30},&quot;to&quot;:{&quot;opacity&quot;:1,&quot;x&quot;:0},&quot;delay&quot;:0.8}"
												style="transform: translate(0px, 0px); opacity: 1;">⟶</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- notice card -->
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5" id="scrollNumber3">Latest
				News</h1>
			<p class="fs-5 text-muted">Proin vel magna id magna fringilla
				porta.</p>
		</div>
		<div class="container px-2 py-3" id="hanging-icons">
			<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
				<div class="col d-flex align-items-start">
					<div
						class="icon-square text-bg-light d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2"></use></svg>
					</div>
					<div>
						<h3 class="fs-2 txt_post">Notice tile</h3>
						<p class="text-muted txt_line">Notice contents</p>
						<a href="#" class="btn btn-primary" style="text-decoration: none;">
							View Details </a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div
						class="icon-square text-bg-light d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2"></use></svg>
					</div>
					<div>
						<h3 class="fs-2 txt_post">Notice tile</h3>
						<p class="text-muted txt_line">Notice contents</p>
						<a href="#" class="btn btn-primary" style="text-decoration: none;">
							View Details </a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div
						class="icon-square text-bg-light d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2"></use></svg>
					</div>
					<div>
						<h3 class="fs-2 txt_post">Notice tile</h3>
						<p class="text-muted txt_line">Notice contents</p>
						<a href="#" class="btn btn-primary" style="text-decoration: none;">
							View Details </a>
					</div>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="/assets/includes/footer.jsp"%><!-- footer -->
	<script>
		function moveScroll(num) {
			const id = "scrollNumber" + num;
			const element = document.getElementById(id);
			element.scrollIntoView();
		}
	</script>
</body>
</html>