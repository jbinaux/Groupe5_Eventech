<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="eventsPublic.css" />

 <title>événement</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
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
					<li><time datetime="2014-07-20">
							<span class="day">4</span> <span class="month">Jan</span> <span
								class="year">2019</span> <span class="time">ALL DAY</span>
						</time> <img alt="Independence Day"
						src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
						<div class="info">
							<h2 class="title">Independence Day</h2>
							<p class="desc">United States Holiday</p>
							<p class="desc">EvÃ¨nement sur l'IA</p>
							<ul>
								<li style="width: 33%;">6 <span
									class="glyphicon glyphicon-ok"></span></li>
								<li style="width: 33%;">76 <span class="fa fa-envelope"></span></li>
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

					<li><time datetime="2014-07-20 0000">
							<span class="day">8</span> <span class="month">Fev</span> <span
								class="year">2019</span> <span class="time">12:00 AM</span>
						</time>
						<div class="info">
							<h2 class="title">One Piece Unlimited World Red</h2>
							<p class="desc">PS Vita</p>
							<p class="desc">EvÃ¨nement sur l'high tech</p>
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
							<span class="day">20</span> <span class="month">Mai</span> <span
								class="year">2019</span> <span class="time">8:00 PM</span>
						</time> <img alt="My 24th Birthday!"
						src="https://farm5.staticflickr.com/4150/5045502202_1d867c8a41_q.jpg" />
						<div class="info">
							<h2 class="title">Mouse0270's 24th Birthday!</h2>
							<p class="desc">Bar Hopping in Erie, Pa.</p>
							<p class="desc">ConfÃ©rence sur le digital</p>
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
							<span class="day">31</span> <span class="month">Sep</span> <span
								class="year">2019</span> <span class="time">4:00 PM</span>
						</time>
						<div class="info">
							<h2 class="title">Disney Junior Live On Tour!</h2>
							<p class="desc">Pirate and Princess Adventure</p>
							<p class="desc">Hackhaton au top</p>
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
							<span class="day">12</span> <span class="month">Nov</span> <span
								class="year">2019</span> <span class="time">4:00 PM</span>
						</time>
						<div class="info">
							<h2 class="title">Slack Community conférence!</h2>
							<p class="desc">Pirate and Princess Adventure</p>
							<p class="desc">Hackhaton au top</p>
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
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
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