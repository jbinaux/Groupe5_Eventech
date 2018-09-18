<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/private/profil.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<title>profil</title>
</head>
<body>

	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="/Groupe5_Eventech/img/user-profile-icon.png" width="256"
					height="256">
			</div>

			<br /> <br />   

			<h2>
				<strong> <c:if test="${sessionScope.user != null}">
					${sessionScope.user.getUserNom() } ${sessionScope.user.getUserPrenom() }
				</c:if>
				</strong>
			</h2>

			<c:if test="${sessionScope.user.isUserAdmin()}">
					<a href="/Groupe5_Eventech/admin/admin">Administrer le site</a>
			</c:if>
			<p>${sessionScope.user.getUserMail() }</p>
			<p>${sessionScope.user.getUserDomaineActivite() }</p>

			<form action="/Groupe5_Eventech/private/updateUser.jsp">
				<input type="submit" value="Modifier mes informations">
			</form>

		</div>

		<div id="column2">

			<br />

			<h2>
				<strong>Evénements créés:</strong>
			</h2>

			<br />

			<ul class="event-list">
				<c:if test="${Events.size() > 0}">
					<c:forEach var="i" begin="0" end="${Events.size() -1}">
						<li><time datetime="2014-07-20">
								<span class="day">04</span> <span class="month">Jan</span> <span
									class="year">2019</span> <span class="time">ALL DAY</span>
							</time> <a href="/Groupe5_Eventech/EventPageServlet?id=${Events.get(i).getIdEvent() }"><img src="imgEventPu/event91.jpg"></a>
							<div class="info">
								<h2 class="title">${Events.get(i).getNomEvent()}</h2>
								<p class="desc">${Events.get(i).getLieuEvent()}  - ${Events.get(i).getDateEvent()}</p>
								<p class="desc">${Events.get(i).getDescriptionEvent()} </p>
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
					</c:forEach>
				</c:if>
			</ul>

			<br />

			<form
				action="/Groupe5_Eventech/private/formulaireEvenementsInternes.jsp">
				<input type="submit" value="Créer un évènement">
			</form>

		</div>

		<div id="column3">

			<br />

			<h2>
				<strong>RdV Evénements:</strong>
			</h2>

			<br />
		</div>

	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>

</body>
</html>