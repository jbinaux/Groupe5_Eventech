<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="eventsPublic.css" />

 <title>événement</title>


    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<style>
.datepicker-dropdown {
  top: 0;
  left: 0;
  padding: 4px;
  background-color: #2C6E8E;
  border-radius: 10px;
}
.datepicker table {
  margin: 0;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;

}

.datepicker table tr td,
.datepicker table tr th {
  text-align: center;
  width: 30px;
  height: 30px;
  border-radius: 4px;
  border: none;
  color: black;
}

.datepicker table tr td.day:hover,
.datepicker table tr td.focused {
  background: #555555;
  cursor: pointer;
  width: 20px;
}
.datepicker table tr td.old,
.datepicker table tr td.new {
  color: #FF8000;
}

.datepicker table tr td.today {
  color: black;
  background-color: #FFA953;
  border-color: #FFB76F;
}
.datepicker table tr td.today:hover {
  color: #FFFFFF;
  background-color: #884400;
  border-color: #f59e00;
}
.datepicker table tr td.active:active,
.datepicker table tr td.active.highlighted:active,
.datepicker table tr td.active.active,
.datepicker table tr td.active.highlighted.active,
.open > .dropdown-toggle.datepicker table tr td.active,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted {
  color: #ffffff;
  background-color: #419841;
  border-color: #285e8e;
}


.datepicker table tr td.active:active:hover,
.datepicker table tr td.active.highlighted:active:hover,
.datepicker table tr td.active.active:hover,
.datepicker table tr td.active.highlighted.active:hover,
.open > .dropdown-toggle.datepicker table tr td.active:hover,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted:hover,
.datepicker table tr td.active:active:focus,
.datepicker table tr td.active.highlighted:active:focus,
.datepicker table tr td.active.active:focus,
.datepicker table tr td.active.highlighted.active:focus,
.open > .dropdown-toggle.datepicker table tr td.active:focus,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted:focus,
.datepicker table tr td.active:active.focus,
.datepicker table tr td.active.highlighted:active.focus,
.datepicker table tr td.active.active.focus,
.datepicker table tr td.active.highlighted.active.focus,
.open > .dropdown-toggle.datepicker table tr td.active.focus,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted.focus {
  color: black;
  background-color: orange;
  border-color: #193c5a;
}
.datepicker table tr td.active:active,
.datepicker table tr td.active.highlighted:active,
.datepicker table tr td.active.active,
.datepicker table tr td.active.highlighted.active,
.open > .dropdown-toggle.datepicker table tr td.active,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted {
  color: #ffffff;
  background-color: #3071a9;
  border-color: #285e8e;
}
.datepicker table tr td.active:active:hover,
.datepicker table tr td.active.highlighted:active:hover,
.datepicker table tr td.active.active:hover,
.datepicker table tr td.active.highlighted.active:hover,
.open > .dropdown-toggle.datepicker table tr td.active:hover,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted:hover,
.datepicker table tr td.active:active:focus,
.datepicker table tr td.active.highlighted:active:focus,
.datepicker table tr td.active.active:focus,
.datepicker table tr td.active.highlighted.active:focus,
.open > .dropdown-toggle.datepicker table tr td.active:focus,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted:focus,
.datepicker table tr td.active:active.focus,
.datepicker table tr td.active.highlighted:active.focus,
.datepicker table tr td.active.active.focus,
.datepicker table tr td.active.highlighted.active.focus,
.open > .dropdown-toggle.datepicker table tr td.active.focus,
.open > .dropdown-toggle.datepicker table tr td.active.highlighted.focus {
  color: #ffffff;
  background-color: #285e8e;
  border-color: #193c5a;
}
.datepicker .datepicker-switch {
  width: 145px;
  
}
.datepicker .datepicker-switch:hover,
.datepicker .prev:hover,
.datepicker .next:hover,
.datepicker tfoot tr th:hover {
  background: #50A2C9;
}
</style>

<script type='text/javascript'>
$(function(){
$('.input-group.date').datepicker({
    orientation: "auto left",
    forceParse: false,
    autoclose: true,
    todayHighlight: true,
    toggleActive: true
});
});

</script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<br />
	<br />
	<br />
	<br />

	<center>
		<h1>
			<strong><font size="80" color="#C8553D"> EVENEMENTS A
					VENIR </font></strong>
		</h1>
	</center>

	<br />
	<br />
	<br />
	<br />

<div class="container1">
<center><h1>Une date particulière ?</h1></center>
<div class="input-group date">
  <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>


<br />
	<br />
	<br />
	<br />
	
	





	<div class="container">
		<div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
				<div class="deroul">
 <button id="twix" class="boutonmenuprincipal">Afficher les événements par : </button>
 <div class="deroul-child">
 <a href="eventsPublic.jsp">  5  </a>
 <a href="eventsPublic2.jsp">  10  </a>
 <a href="eventsPublic3.jsp">  20  </a>
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
                
				<div id="pag">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="eventsPublic.jsp?#twix"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="eventsPublic.jsp?#twix">1</a></li>
							<li class="page-item"><a class="page-link" href="eventsPublic2.jsp?#twix">2</a></li>
							<li class="page-item"><a class="page-link" href="eventsPublic3.jsp?#twix">3</a></li>
							<li class="page-item"><a class="page-link" href="eventsPublic2.jsp?#twix"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
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