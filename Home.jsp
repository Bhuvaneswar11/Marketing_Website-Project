
<%
if (session.getAttribute("email") == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link href="css/index-styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body id="page-top">
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Tech Beast</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Portfolio</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<div class="container">
						<form action="search.jsp">
							<input type="text" name="name" class="form-control"
								placeholder="Search name" />
							<button type="submit" name="submit" class="btn btn-primary">Search</button>
						</form>
					</div>


					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
					<ul class="nav navbar-nav navbar-right">
						<li><img
							src="success.jsp?email=<%=request.getParameter("email")%>"
							class="img-rounded" style="border-radius: 50%" alt="Cinque Terre"
							width="40" height="40"></li>
					</ul>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout"><%=session.getAttribute("email")%></a></li>



				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
				alt="..." />
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Tech
				Beast</h1>
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<p class="masthead-subheading font-weight-light mb-0">Java
				Development - Web Development - Database</p>
		</div>
		<div class="flip-box">
			<div class="flip-box-inner">
				<div class="flip-box-front">
					<p>Welcome to TechBeast</p>
				</div>
				<div class="flip-box-back">
					<p>
						<iframe width="210" height="120"
							src="https://www.youtube.com/embed/VIDEO_IDhttps://www.youtube.com/watch?v=YT3qN6n6EgY&list=PLuqUq6yfXlCFij5xf8rFFWfPKobLNAPbs"
							frameborder="0"
							allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</p>
				</div>
			</div>
		</div>

<style>
.flip-box {
	perspective: 1000px;
	height: 200px;
	position: left;
	width: 200px;
	position: relative;
	margin: auto;
}

.flip-box-inner {
	position: absolute;
	width: 100%;
	height: 100%;
	transition: transform 0.8s;
	transform-style: preserve-3d;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.flip-box:hover .flip-box-inner {
	transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
}

.flip-box-front {
	background-color: #bbb;
	color: black;
}

.flip-box-back {
	background-color: #2980b9;
	color: white;
	transform: rotateY(180deg);
}
</style>
	</header>
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cabin.png"
							alt="..." />
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cake.png"
							alt="..." />
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/circus.png"
							alt="..." />
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal4">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/game.png"
							alt="..." />
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal5">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/safe.png"
							alt="..." />
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal6">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/submarine.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>

			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Freelancer is a free bootstrap theme created by
						Start Bootstrap. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional SASS
						stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">You can create your own custom avatar for the
						masthead, change the icon in the dividers, and add your email
						address to the contact form to make it fully functional!</p>
				</div>
			</div>
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="https://startbootstrap.com/theme/freelancer/"> <i
					class="fas fa-download me-2"></i> Free Download!
				</a>
			</div>
		</div>
	</section>
	<section class="page-section" id="contact">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/login/"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://twitter.com/i/flow/login"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://www.linkedin.com/home"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://dribbble.com/tags/login"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
	</div>
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Log
									Cabin</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cabin.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Tasty
									Cake</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cake.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Circus
									Tent</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/circus.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Controller</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/game.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Locked
									Safe</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/safe.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Submarine</h2>
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/submarine.png" alt="..." />
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	


	<script src="script.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<label class="switch">
  <input type="checkbox" id="modeToggle">
  <span class="slider round"></span>
</label>
<style>
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 34px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 50%;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
:root {
  --bg-color: #FFFFFF;
  --text-color: #000000;
}

.dark-mode {
  --bg-color: #222222;
  --text-color: #FFFFFF;
}
:root {
  --bg-color: #FFFFFF;
  --text-color: #000000;
}

.dark-mode {
  --bg-color: #222222;
  --text-color: #FFFFFF;
}
body {
  background-color: var(--bg-color);
  color: var(--text-color);
}

h1, h2, h3, h4, h5, h6 {
  color: var(--text-color);
}

</style>
<script>const modeToggle = document.querySelector('#modeToggle');
const body = document.querySelector('body');

modeToggle.addEventListener('change', () => {
  body.classList.toggle('dark-mode');
});
</script>
<div class="popup-container">
		<div class="popup-content">
			<h2>Important Announcement</h2>
			<p>HOLA WELCOME TO MY WEBSITE &#128525;</p>
			<button class="close-button">Close</button>
		</div>
	</div>
	<style>
.popup-container {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	display: none;
}

.popup-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	max-width: 600px;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
}

.close-button {
	position: absolute;
	top: 10px;
	right: 10px;
	background-color: #fff;
	border: none;
	cursor: pointer;
}
</style>
	<script>
const popupContainer = document.querySelector('.popup-container');
const closeButton = document.querySelector('.close-button');

closeButton.addEventListener('click', () => {
  popupContainer.style.display = 'none';
});

window.addEventListener('load', () => {
  popupContainer.style.display = 'block';
});

</script>
<div id="chat-window">
		<div class="chat-header">
			<h4>
				Chat with us
				<h4>
					</h1>
		</div>
		<div id="chat-messages"></div>
		<form id="chat-form">
			<input type="text" id="chat-input" placeholder="Type your message...">
			<button type="submit">Send</button>
		</form>
	</div>
	<style>
#chat-window {
	height: 400px;
	width: 300px;
	background-color: #fff;
	border: 1px solid #ccc;
	position: fixed;
	bottom: 20px;
	right: 20px;
}

#chat-messages {
	height: 300px;
	overflow-y: scroll;
}

#chat-form input[type="text"] {
	width: 80%;
	padding: 10px;
	border: none;
	border-bottom: 1px solid #ccc;
	font-size: 16px;
}

#chat-form button {
	width: 20%;
	background-color: #333;
	color: #fff;
	border: none;
	padding: 10px;
	font-size: 16px;
	cursor: pointer;
}

h4 {
	text-color: green;
}
</style>
<script>
const chatForm = document.querySelector('#chat-form');
const chatInput = document.querySelector('#chat-input');
const chatMessages = document.querySelector('#chat-messages');

chatForm.addEventListener('submit', (e) => {
  e.preventDefault();
  const message = chatInput.value;
  appendMessage('You', message);
  chatInput.value = '';
  // Send message to backend here
});

function appendMessage(sender, message) {
  const messageDiv = document.createElement('div');
  messageDiv.classList.add('message');
  const senderSpan = document.createElement('span');
  senderSpan.classList.add('sender');
  senderSpan.innerText = sender;
  const messageSpan = document.createElement('span');
  messageSpan.classList.add('message-text');
  messageSpan.innerText = message;
  messageDiv.appendChild(senderSpan);
  messageDiv.appendChild(messageSpan);
  chatMessages.appendChild(messageDiv);
}
</script>
</body>
</html>
