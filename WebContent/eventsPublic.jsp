<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" type="text/css" href="eventsPublic.css" />
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<title>événement</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<br />
	<br />
	<br />
	<br />

	<h1>
		<strong><font size="80" color="#C8553D"> EVENEMENTS A
				VENIR </font></strong>
	</h1>

	<br />
	<br />


	<div id="gauche" class="fixgauche">
		<div id="cal">

			<div class="header">
				<span class="left button" id="prev"> &lang; </span> <span
					class="left hook"></span> <span class="month-year" id="label">
					Septembre 2018 </span> <span class="right hook" id=""></span> <span
					class="right button" id="next"> &rang; </span>
			</div>
			<table id="days">
				<tr>
					<td>dim</td>
					<td>lun</td>
					<td>mar</td>
					<td>mer</td>
					<td>jeu</td>
					<td>ven</td>
					<td>sam</td>
				</tr>
			</table>
			<div id="cal-frame">
				<table class="curr">
					<tr>
						<td class="nil"></td>
						<td class="nil"></td>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
					</tr>
					<tr>
						<td>6</td>
						<td>7</td>
						<td>8</td>
						<td>9</td>
						<td>10</td>
						<td>11</td>
						<td>12</td>
					</tr>
					<tr>
						<td>13</td>
						<td>14</td>
						<td>15</td>
						<td>16</td>
						<td>17</td>
						<td>18</td>
						<td class="today">19</td>
					</tr>
					<tr>
						<td>20</td>
						<td>21</td>
						<td>22</td>
						<td>23</td>
						<td>24</td>
						<td>25</td>
						<td>26</td>
					</tr>
					<tr>
						<td>27</td>
						<td>28</td>
						<td>29</td>
						<td>30</td>
						<td class="nil"></td>
						<td class="nil"></td>
						<td class="nil"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>


	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script src="calendar.js"></script>
	<script>
		var cal = CALENDAR();

		cal.init();
	</script>

	<script type="text/javascript">
		$(function() {
			$(window).scroll(function() {//Au scroll dans la fenetre on déclenche la fonction
				if ($(this).scrollTop() > 500) { //si on a défini de plus de 187 px du haut vers le bas
					$('#gauche').addClass("fixgauche"); //on ajoute la classe "fixgauche" à <div id="gauche">
				} else {
					$('#gauche').removeClass("fixgauche");//sinon on retire la classe "fixgauche" à <div id="gauche">
				}
			});
		});
	</script>
	<br />




	<div class="container">
		<div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<div class="deroul">
						<button id="twix" class="boutonmenuprincipal">Afficher
							les événements par :</button>
						<div class="deroul-child">
							<a href="eventsPublic.jsp"> 5 </a> <a href="eventsPublic2.jsp">
								10 </a> <a href="eventsPublic3.jsp"> 20 </a>
						</div>
					</div>

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
							<p class="desc">Les start-up innovantes dans l'industrie du
								vin seront là.</p>
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

				<div id="pag">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link"
								href="eventsPublic.jsp?#twix" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link"
								href="eventsPublic.jsp?#twix">1</a></li>
							<li class="page-item"><a class="page-link"
								href="eventsPublic2.jsp?#twix">2</a></li>
							<li class="page-item"><a class="page-link"
								href="eventsPublic3.jsp?#twix">3</a></li>
							<li class="page-item"><a class="page-link"
								href="eventsPublic2.jsp?#twix" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>




	<br />
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="footer.html"></jsp:include>
</body>
</html>