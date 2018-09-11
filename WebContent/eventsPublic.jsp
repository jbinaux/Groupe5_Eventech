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

<title>événements</title>
</head>
<body>
    
	<jsp:include page="header.jsp"></jsp:include>
	

	<br />
	<br />
	<br />
	<br />

	<center>
		<h1><strong><font size="80" color="#C8553D">
		     EVENEMENTS A VENIR </font></strong></h1>
		     </center>
			
			<br />
			<br />
			<br />
			<br />

			<div class="container">
				<div class="row">
					<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
						<ul class="event-list">
							<li><time datetime="2014-07-20"> <span class="day">4</span>
								<span class="month">Jul</span> <span class="year">2014</span> <span
									class="time">ALL DAY</span> </time> <img alt="Independence Day"
								src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
								<div class="info">
									<h2 class="title">Independence Day</h2>
									<p class="desc">United States Holiday</p>
									<p class="desc">Evènement sur l'IA</p>
									<ul>
										<li style="width: 33%;">6 <span
											class="glyphicon glyphicon-ok"></span></li>
										<li style="width: 33%;">76 <span class="fa fa-envelope"></span></li>
										<li style="width: 34%;">00.00$ </li>
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

							<li><time datetime="2014-07-20 0000"> <span
									class="day">8</span> <span class="month">Jul</span> <span
									class="year">2014</span> <span class="time">12:00 AM</span> </time>
								<div class="info">
									<h2 class="title">One Piece Unlimited World Red</h2>
									<p class="desc">PS Vita</p>
									<p class="desc">Evènement sur l'high tech</p>
									<ul>
										<li style="width: 33%;">89 <span
											class="glyphicon glyphicon-ok"></span></li>
										<li style="width: 33%;">526 <span class="fa fa-envelope"></span></li>
										<li style="width: 34%;">29.99$ </li>
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

							<li><time datetime="2014-07-20 2000"> <span
									class="day">20</span> <span class="month">Jan</span> <span
									class="year">2014</span> <span class="time">8:00 PM</span> </time> <img
								alt="My 24th Birthday!"
								src="https://farm5.staticflickr.com/4150/5045502202_1d867c8a41_q.jpg" />
								<div class="info">
									<h2 class="title">Mouse0270's 24th Birthday!</h2>
									<p class="desc">Bar Hopping in Erie, Pa.</p>
									<p class="desc">Conférence sur le digital</p>
									<ul>
										<li style="width: 33%;">789 <span
											class="glyphicon glyphicon-ok"></span></li>
										<li style="width: 33%;">221 <span class="fa fa-envelope"></span></li>
										<li style="width: 34%;">59.99$ </li>
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

							<li><time datetime="2014-07-31 1600"> <span
									class="day">31</span> <span class="month">Jan</span> <span
									class="year">2014</span> <span class="time">4:00 PM</span> </time> 
								<div class="info">
									<h2 class="title">Disney Junior Live On Tour!</h2>
									<p class="desc">Pirate and Princess Adventure</p>
									<p class="desc">Hackhaton au top</p>
									<ul>
										<li style="width: 33%;">3 <span
											class="glyphicon glyphicon-ok"></span></li>
										<li style="width: 33%;">12 <span class="fa fa-envelope"></span></li>
										<li style="width: 34%;">00.00$ </li>
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