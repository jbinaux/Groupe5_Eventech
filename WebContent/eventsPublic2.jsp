<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>

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
	<br />
	<br />

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
					<td class="today">11</td>
					<td>12</td>
				</tr>
				<tr>
					<td>13</td>
					<td>14</td>
					<td>15</td>
					<td>16</td>
					<td>17</td>
					<td>18</td>
					<td>19</td>
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

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script src="calendar.js"></script>
	<script>
		var cal = CALENDAR();

		cal.init();
	</script>


	<br />
	<br />
	<br />
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
					
					<c:forEach var="i" begin="0" end="${events.size() -1 }">
					<li><time datetime="2014-07-20">
							<span class="day">10</span> <span class="month">Fev</span> <span
								class="year">2020</span> <span class="time">ALL DAY</span>
						</time> <a href="EventPageServlet?id=${events.get(i).getIdEvent()}"><img src="imgEventPu/event61.jpg"></a>
						<div class="info">
							<h2 class="title">${events.get(i).getNomEvent() }</h2>
							<p class="desc">${events.get(i).getLieu() }</p>
							<p class="desc">${events.get(i).getDescription() }</p>
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
					</c:forEach>


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
								href="eventsPublic3.jsp?#twix" aria-label="Next"> <span
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