<!DOCTYPE html>
<html lang="en">
<head>
    <title>Page Evenement</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

    <!-- Styles -->
    <link rel="stylesheet" href="EventPage.css">
</head>
<div id="end">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/Groupe5_Eventech/index.jsp"><img id="logo" src="img/logo23.png" width="60" height="40"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
				<li><a class="inv">septembre is well done yeah ... </a></li>			
					<li class="nav-item"><a class="nav-link"
						href="index.jsp">Accueil</a></li>
						<c:if test="${sessionScope.user == null}">
					</c:if>
					
					
					<li class="nav-item"><a class="nav-link"
						href="eventsPublic.jsp">Evénements</a></li>
					<c:if test="${sessionScope.user == null}">
						<li class="nav-item"><a class="nav-link"
							href="/Groupe5_Eventech/connect.jsp">Connection</a></li>
					</c:if>
					<li class="nav-item"><a class="nav-link"
						href="/Groupe5_Eventech/contact.jsp">Contact</a></li>
					<c:if test="${sessionScope.user != null}">
					
					
						<li class="nav-item"><a class="nav-link"
							href="/Groupe5_Eventech/private/profil.jsp">Profil</a></li>
					</c:if>
					
					<li class="nav-item"><a class="nav-link"
						href="/Groupe5_Eventech/private/espaceM.jsp">Espace membres</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Bienvenue!" aria-label="Search">
					
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
				</form>
				<c:if test="${sessionScope.user != null}">
					
				</c:if>
			</div>
		</nav>
	</div>


	
<body class="single-event-page">
<header class="site-header">
    <div class="header-bar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-10 col-lg-2 order-lg-1">
                    <div class="site-branding">
                        <div class="site-title">
                            <a href="#"></a>
                        </div><!-- .site-title -->
                    </div><!-- .site-branding -->
                </div><!-- .col -->

                <div class="col-2 col-lg-7 order-3 order-lg-2">
                  
                </div><!-- .col -->

                <div class="col-lg-3 d-none d-lg-block order-2 order-lg-3">
                    
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .header-bar -->

    <div class="page-header single-event-page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <header class="entry-header">
                        <h1 class="entry-title"><center>${event.getDomaineEvent() }</center></h1>
                    </header>
                </div>
            </div>
        </div>
    </div>
</header><!-- .site-header -->

<div class="container">
    <div class="row">
        <div class="col-12 single-event visible">
            <div class="event-content-wrap">
                <header class="entry-header flex flex-wrap justify-content-between align-items-end">
                    
                    <div class="single-event-heading">
                        <h2 class="entry-title">${event.getNomEvent() } et Année de l'événement</h2>

                        <div class="event-location"><a href="#">${event.getLieuEvent() }</a></div>

                        <div class="event-date">${event.getDateEvent() } ${event.getHeureEvent() }</div>
                        
                       <!--   <a class="btn btn-white" data-scroll="" href="#jyvais">J'y vais</a>
                        -->
                    </div>
   
                    
<!--  
<div class="liker ">
                    <div class="entry-footer">
                        <a href="#" class="btn">J'y vais</a>
                        <a href="#" class="btn current">LIKE</a>
                    </div>
        </div>
   -->   
   <div class="btn-container mt-5">
                       <a href="https://themes.getbootstrap.com/product/purpose-website-ui-kit/" target="_blank" 
                       class="btn btn-white btn-circle btn-translate--hover px-4 mr-lg-4">J'y Vais</a>
                       <a href="./docs/plugins.html" target="_blank" 
                       class="btn btn-warning btn-circle btn-translate--hover px-4">
                       <input type="image" name="toto" value="toto" src="img/panda2.png" width="auto" height="25" >
                       </a>
                                
                                </div>                  
                </header>

                <figure class="events-thumbnail">
                    <img src="img/work11.jpg" alt="">
                </figure>
            </div>
        </div>
    </div>





    <div class="row">
        <div class="col-12">
            <div class="tabs">
                <ul class="tabs-nav flex">
                    <li class="tab-nav flex justify-content-center align-items-center active" data-target="#tab_details">Infos Transport</li>
                    <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_venue">Détails événement</li>
                    <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_organizers">Autres</li>
                </ul>

                <div class="tabs-container">
                    <div id="tab_details" class="tab-content" style="display: block;">
                        <div class="flex flex-wrap justify-content-between">
                            <div class="single-event-details">
                                <div class="single-event-details-row">
                                    <label>Adresse:</label>
                                    <p>(Adresse complète)</p>
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
                                <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            </div>
                        </div>
                    </div>

                    <div id="tab_venue" class="tab-content" style="display: none;">
                        <p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>
                    </div>

                    <div id="tab_organizers" class="tab-content" style="display: none;">
                        <p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
          
           
        </div>
    </div>
<!-- 
    <div class="row">
        <div class="col-12">
            <div class="upcoming-events">
                <div class="upcoming-events-header">
                    <h4>Evénement à venir</h4>
                </div>

                <div class="upcoming-events-list">
                    <div class="upcoming-event-wrap flex flex-wrap justify-content-between align-items-center">
                        <figure class="events-thumbnail">
                            <a href="#"><img src="img/upcoming-1.jpg" alt=""></a>
                        </figure>

                        <div class="entry-meta">
                            <div class="event-date">
                                25<span>Octobre</span> <span class="time">08h00</span>
                                
                            </div>
                        </div>

                        <header class="entry-header">
                            <h3 class="entry-title"><a href="#">Blockchain Conférence</a></h3>

                            <div class="event-date-time">25 Octobre 2018, à 8h00 - 30 Octobre 2018, à 16h00 </div>

                            <div class="event-speaker">Speackers: Maria Williams, Luis Rodrigues, James Doe</div>
                        </header>

                        <footer class="entry-footer">
                            
                        </footer>
                    </div>

                    <div class="upcoming-event-wrap flex flex-wrap justify-content-between align-items-center">
                        <figure class="events-thumbnail">
                            <a href="#"><img src="img/upcoming-2.jpg" alt=""></a>
                        </figure>

                        <div class="entry-meta">
                            <div class="event-date">
                                27<span>Octobre</span><span class="time">18h00</span>
                            </div>
                        </div>

                        <header class="entry-header">
                            <h3 class="entry-title"><a href="#">Conférence Bitcoin</a></h3>

                            <div class="event-date-time">27 Octobre 2018, de 18h00 à 20h00</div>

                            <div class="event-speaker">Speackers: Maria Williams, Luis Smith, James Doe</div>
                        </header>

                        <footer class="entry-footer">
                            
                        </footer>
                    </div>

                    <div class="upcoming-event-wrap flex flex-wrap justify-content-between align-items-center">
                        <figure class="events-thumbnail">
                            <a href="#"><img src="img/upcoming-3.jpg" alt=""></a>
                        </figure>

                        <div class="entry-meta">
                            <div class="event-date">
                                29<span>Octobre</span><span class="time">18h30</span>
                            </div>
                        </div>

                        <header class="entry-header">
                            <h3 class="entry-title"><a href="#">Meet Up Simplon</a></h3>

                            <div class="event-date-time">29 Octobre 2018, de 18h30 à 20h30</div>

                            <div class="event-speaker">Speackers: Maria Williams, Luis Smith, James Doe</div>
                            
                        </header>

                        <footer class="entry-footer">
                            
                        </footer>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
-->
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
							<h2 class="title">Apéro Wine Tech</h2>
							<p class="desc">75013 Paris - 04/01/2019</p>
							<p class="desc">Les start-up innovantes dans l'industrie du vin seront là.</p>
							<ul>
								<li><img id="ter" src="img/panda2.png" width="20" height="20"><span
									class="glyphicon glyphicon-ok"><a style="width: 33%;">6</a></span></li>
									
								<li style="width: 33%;">76 <span class="fa fa-envelope"></span></li>
								<li style="width: 34%;">00.00</li>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width: 33%;"><a
									href="#facebook"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width: 34%;"><a href="#twitter"><span
										class="fa fa-twitter"></span></a></li>
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
								<li class="twitter" style="width: 34%;"><a href="#twitter"><span
										class="fa fa-twitter"></span></a></li>
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
							<p class="desc">Réalisations, perspectives et enjeux</p>
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
								<li class="twitter" style="width: 34%;"><a href="#twitter"><span
										class="fa fa-twitter"></span></a></li>
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
							<h2 class="title">Entreprise Tech: apprenez à développer</h2>
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
								<li class="twitter" style="width: 34%;"><a href="#twitter"><span
										class="fa fa-twitter"></span></a></li>
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
								<li class="twitter" style="width: 34%;"><a href="#twitter"><span
										class="fa fa-twitter"></span></a></li>
								<li class="linkedin" style="width: 33%;"><a
									href="#linkedin"><span class="fa fa-linkedin"></span></a></li>
							</ul>
						</div></li>
				</ul>
                
                <br />             
                
			

			</div>
		</div>
	</div>




















<div id="foot">
		<footer>
			<br /> <br /> <br />
			<div id="basDePage">
				<p>Conception web: Groupe 5</p>
				<p>
					Nous contacter: <a href="client.simplon@gmail.com"
						style="color: #F28F3B;"> client.simplon@gmail.com</a>
				</p>
			</div>
			<br /> <br /> <br /> <br /> <br /> <br /> <br />
		</footer>
	</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/masonry.pkgd.min.js"></script>
<script type="text/javascript" src="js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/swiper.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
<script type="text/javascript" src="js/circle-progress.min.js"></script>
<script type="text/javascript" src="js/jquery.countTo.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>


</body></html>
