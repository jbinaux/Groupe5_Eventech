<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Page Evenement</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />

<!-- Social bar -->

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
	crossorigin="anonymous">
<!-- Styles -->


<link rel="stylesheet" href="EventPage.css">
</head>

<body class="single-event-page">
	<jsp:include page="/navbarDropdown.jsp"></jsp:include>
	<header class="site-header">
		<div class="header-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-10 col-lg-2 order-lg-1">
						<div class="site-branding">
							<div class="site-title">
								<a href="#"></a>
							</div>
							<!-- .site-title -->
						</div>
						<!-- .site-branding -->
					</div>
					<!-- .col -->

					<div class="col-2 col-lg-7 order-3 order-lg-2"></div>
					<!-- .col -->

					<div class="col-lg-3 d-none d-lg-block order-2 order-lg-3"></div>
					<!-- .col -->
				</div>
				<!-- .row -->
			</div>
			<!-- .container-fluid -->
		</div>
		<!-- .header-bar -->

		<div class="page-header single-event-page-header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<header class="entry-header">
							<h1 class="entry-title">
								<center>${event.getDomaineEvent() }</center>
							</h1>
						</header>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- .site-header -->

	<div class="container">
		<div class="row">
			<div class="col-12 single-event visible">
				<div class="event-content-wrap">
					<header
						class="entry-header flex flex-wrap justify-content-between align-items-end">

						<div class="single-event-heading">
							<h2 class="entry-title">${event.getNomEvent() }
								${event.getYear()}</h2>

							<div class="event-location">
								<a href="#">${event.getLieuEvent() }</a>
							</div>

							<div class="event-date">${event.getDateEvent() }
								${event.getHeureEvent() }</div>


						</div>



						<div class="btn-container mt-5">
							<c:if test="${sub == false}">
								<a href="SubscriptionServlet?eventId=${event.getIdEvent()}"
									class="btn btn-warning px-4 mr-lg-4">J'y vais</a>
							</c:if>
							<c:if test="${sub == true}">
								<a href="SubscriptionServlet?eventId=${event.getIdEvent()}"
									class="btn btn-warning px-4 mr-lg-4">Je n'y vais plus</a>
							</c:if>
							<a href="./docs/plugins.html" target="_blank"
								class="btn btn-warning btn-circle btn-translate--hover px-4">
								<input type="image" name="toto" value="toto"
								src="img/panda2.png" width="auto" height="25">

							</a></br>
							<span>Il reste ${event.getCapacite() - inscrits} places</span>

						</div>
					</header>

					<figure class="events-thumbnail">
						<img src="img/work11.jpg" alt="">
					</figure>
				</div>
			</div>
		</div>






		<nav class="nav icon-set">
			<div class="row">
				<div class="col" class="facebook">
					<a href="#" data-toggle="tooltip" title="Facebook"><i
						class="fa fa-facebook fa-lg"></i></a>
				</div>
				<div class="col" class="twitter">
					<a href="#" data-toggle="tooltip" title="Twitter"><i
						class="fa fa-twitter fa-lg"></i></a>
				</div>
				<div class="col" class="linkedin">
					<a href="#" data-toggle="tooltip" title="LinkedIn"><i
						class="fa fa-linkedin fa-lg"></i></a>
				</div>

			</div>
		</nav>



		<div class="row">
			<div class="col-12">
				<div class="tabs">
					<ul class="tabs-nav flex">
						<li
							class="tab-nav flex justify-content-center align-items-center active"
							data-target="#tab_details">Infos Transport</li>
						<li class="tab-nav flex justify-content-center align-items-center"
							data-target="#tab_venue">Détails événement</li>
						<li class="tab-nav flex justify-content-center align-items-center"
							data-target="#tab_organizers">Autres</li>
					</ul>

					<div class="tabs-container">
						<div id="tab_details" class="tab-content" style="display: block;">
							<div class="flex flex-wrap justify-content-between">
								<div class="single-event-details">
									<div class="single-event-details-row">
										<label>Adresse:</label>
										<p>${event.getLieuEvent() }</p>
									</div>

									<div class="single-event-details-row">
										<label>Transport en commun :</label>
										<p>(Ligne et Station)</p>
									</div>

									<div class="single-event-details-row">
										<label>Voiture :</label>
										<p>(Trajet)</p>
									</div>
								</div>

								<div class="single-event-map">
									<iframe id="gmap_canvas"
										src="https://maps.google.com/maps?q=${event.getLieuEvent() }&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=&amp;output=embed"
										frameborder="0" scrolling="no" marginheight="0"
										marginwidth="0"></iframe>
								</div>
							</div>
						</div>

						<div id="tab_venue" class="tab-content" style="display: none;">
							<p>Nullam dictum felis eu pede mollis pretium. Integer
								tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean
								vulputate eleifend tellus. Aenean leo ligula, porttitor eu,
								consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus
								in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut
								metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam
								ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.
								Nam eget dui.</p>
						</div>

						<div id="tab_organizers" class="tab-content"
							style="display: none;">
							<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum
								rhoncus, sem quam semper libero, sit amet adipiscing sem neque
								sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,
								hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.
								Donec vitae sapien ut libero venenatis faucibus. Nullam quis
								ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis
								leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis
								magna.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-12"></div>
		</div>

		<div class="col-12">
			<div class="upcoming-events">
				<div class="upcoming-events-header">
					<h4>Evénement à venir</h4>
				</div>
				<div class="container">
					<div class="row">
						<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
							<ul class="event-list">

								<br />
								<br />
								<br />

								<li><time datetime="2014-07-20">
										<span class="day">04</span> <span class="month">Jan</span> <span
											class="year">2019</span> <span class="time">ALL DAY</span>
									</time> <img src="imgEventPu/event91.jpg">
									<div class="info">
										<h2 class="title">Apero Wine Tech</h2>
										<p class="desc">75013 Paris - 04/01/2019</p>
										<p class="desc">Les start-up innovantes dans l'industrie
											du vin seront l�.</p>
										<ul>
											<li><img id="ter" src="img/panda2.png" width="20"
												height="20"><span class="glyphicon glyphicon-ok"><a
													style="width: 33%;">6</a></span></li>

											<li style="width: 33%;">76 <span class="fa fa-envelope"></span></li>
											<li style="width: 34%;">00.00</li>
										</ul>
									</div>
									<div class="social">
										<ul>
											<li class="facebook" style="width: 33%;"><a
												href="#facebook"><span class="fa fa-facebook"></span></a></li>
											<li class="twitter" style="width: 34%;"><a
												href="#twitter"><span class="fa fa-twitter"></span></a></li>
											<li class="linkedin" style="width: 33%;"><a
												href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
										</ul>
									</div></li>

								<br />

								<li><time datetime="2014-07-20 0000">
										<span class="day">08</span> <span class="month">Jan</span> <span
											class="year">2019</span> <span class="time">12:00 AM</span>
									</time><img src="imgEventPu/event78.jpg">
									<div class="info">
										<h2 class="title">Paris New Tech Meetup - Startup pitchs!</h2>
										<p class="desc">75010 Paris - 08/01/2019</p>
										<p class="desc">5 nouvelles start-up sur le devant</p>
										<ul>
											<li style="width: 33%;">89 <span
												class="glyphicon glyphicon-ok"></span></li>
											<li style="width: 33%;">526 <span class="fa fa-envelope"></span></li>
											<li style="width: 34%;">29.99$</li>
										</ul>
									</div>
									<div class="social">
										<ul>
											<li class="facebook" style="width: 33%;"><a
												href="#facebook"><span class="fa fa-facebook"></span></a></li>
											<li class="twitter" style="width: 34%;"><a
												href="#twitter"><span class="fa fa-twitter"></span></a></li>
											<li class="linkedin" style="width: 33%;"><a
												href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
										</ul>
									</div></li>

								<br />

								<li><time datetime="2014-07-20 2000">
										<span class="day">20</span> <span class="month">Jan</span> <span
											class="year">2019</span> <span class="time">8:00 PM</span>
									</time> <img alt="My 24th Birthday!"
									src="https://farm5.staticflickr.com/4150/5045502202_1d867c8a41_q.jpg" />
									<div class="info">
										<h2 class="title">Matinale Deep Law for Tech.</h2>
										<p class="desc">75002 Paris - 20/01/2019</p>
										<p class="desc">R�alisations, perspectives et enjeux</p>
										<ul>
											<li style="width: 33%;">789 <span
												class="glyphicon glyphicon-ok"></span></li>
											<li style="width: 33%;">221 <span class="fa fa-envelope"></span></li>
											<li style="width: 34%;">59.99$</li>
										</ul>
									</div>
									<div class="social">
										<ul>
											<li class="facebook" style="width: 33%;"><a
												href="#facebook"><span class="fa fa-facebook"></span></a></li>
											<li class="twitter" style="width: 34%;"><a
												href="#twitter"><span class="fa fa-twitter"></span></a></li>
											<li class="linkedin" style="width: 33%;"><a
												href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
										</ul>
									</div></li>

								<br />

								<li><time datetime="2014-07-31 1600">
										<span class="day">27</span> <span class="month">Jan</span> <span
											class="year">2019</span> <span class="time">4:00 PM</span>
									</time><img src="imgEventPu/event60.jpg">
									<div class="info">
										<h2 class="title">Entreprise Tech: apprenez � d�velopper</h2>
										<p class="desc">75001 Paris - 27/01/2019</p>
										<p class="desc">Ateliers divers.</p>
										<ul>
											<li style="width: 33%;">3 <span
												class="glyphicon glyphicon-ok"></span></li>
											<li style="width: 33%;">12 <span class="fa fa-envelope"></span></li>
											<li style="width: 34%;">00.00$</li>
										</ul>
									</div>
									<div class="social">
										<ul>
											<li class="facebook" style="width: 33%;"><a
												href="#facebook"><span class="fa fa-facebook"></span></a></li>
											<li class="twitter" style="width: 34%;"><a
												href="#twitter"><span class="fa fa-twitter"></span></a></li>
											<li class="linkedin" style="width: 33%;"><a
												href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
										</ul>
									</div></li>

								<br />

								<li><time datetime="2014-07-31 1600">
										<span class="day">30</span> <span class="month">Jan</span> <span
											class="year">2019</span> <span class="time">4:00 PM</span>
									</time><img src="imgEventPu/event63.jpg">
									<div class="info">
										<h2 class="title">Grande soirée - Women in Tech for Good</h2>
										<p class="desc">75020 Paris - 30/01/2019</p>
										<p class="desc">Projets inspirants et novateurs</p>
										<ul>
											<li style="width: 33%;">35 <span
												class="glyphicon glyphicon-ok"></span></li>
											<li style="width: 33%;">123 <span class="fa fa-envelope"></span></li>
											<li style="width: 34%;">00.00$</li>
										</ul>
									</div>
									<div class="social">
										<ul>
											<li class="facebook" style="width: 33%;"><a
												href="#facebook"><span class="fa fa-facebook"></span></a></li>
											<li class="twitter" style="width: 34%;"><a
												href="#twitter"><span class="fa fa-twitter"></span></a></li>
											<li class="linkedin" style="width: 33%;"><a
												href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
										</ul>
									</div></li>
							</ul>

							<br />



						</div>
					</div>
				</div>

				<!-- ZONE COMMENTAIRES -->

				<!-- 				<div class="comments">
					<div class="row">
						<div class="col-md-12">
							<h3>2 Commentaires</h3>
							<div class="cmnt-clipboard">
								<span class="btn-clipboard">Repondre</span>
							</div>
							<div class="well">
								<div class="row">
									<div class="col-md-2">
										<img src="assets/img/commenter1.jpg"
											class="img-responsive center-block">
									</div>
									<div class="col-md-10">
										<p class="comment-info">
											<strong>Reena Scot</strong> <span>22 april 2015</span>
										</p>
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since they 1500s.</p>
									</div>
								</div>
							</div>

							<div class="cmnt-clipboard">
								<span class="btn-clipboard">Reply</span>
							</div>
							<div class="well">
								<div class="row">
									<div class="col-md-2">
										<img src="assets/img/commenter2.jpg"
											class="img-responsive center-block">
									</div>
									<div class="col-md-10">
										<p class="comment-info">
											<strong>David Martin</strong> <span>22 april 2015</span>
										</p>
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since they 1500s.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="comment-post">
					<h3>Poster un commentaire</h3>
					<form method="post">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<input name="name" class="form-control" id="name"
										required="required" placeholder="Nom / Prénom" type="text">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<input name="email" class="form-control" id="email"
										required="required" placeholder="Adresse E-Mail" type="email">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<input name="website" class="form-control" id="subject"
										required="required"
										placeholder="Entrez le MP si possible niveau technique"
										type="url">
								</div>
							</div>
							<div class="col-md-12">
								<textarea name="message" type="text" class="form-control"
									id="message" rows="8" required="required"
									placeholder="Type here message"></textarea>
							</div>
						</div>

						<button type="submit" id="submit" name="submit"
							class="btn btn-black">Poster un commentaire</button>
					</form>
				</div>
-->

				<br /> <br /> <br />

				<jsp:include page="footer.html"></jsp:include>
</body>
</html>
