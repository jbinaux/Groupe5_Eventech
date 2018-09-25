<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
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
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/eventsPublic.css" />
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/private/profil.css" />
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
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-2 text-center">
				<img src="/Groupe5_Eventech/img/user-profile-icon.png" class="img-fluid align-self-center">

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

			<a href="/Groupe5_Eventech/private/updateUser.jsp" class="btn btn-warning orange">Modifier mes</br>informations</a>
			

		</div>

		<div class="col-lg">

			<br />

			<h2>
				<strong>Evénements créés</strong>
			</h2>

			<br />

			<ul class="event-list">
				<c:if test="${Events.size() > 0}">
					<c:forEach var="i" begin="0" end="${Events.size() -1}">
						<li><time datetime="${Events.get(i).getDateEvent()}">
								<span class="day">${Events.get(i).getDay()}</span> <span class="month">${Events.get(i).getMonth()}</span> <span
									class="year">${Events.get(i).getYear()}</span> <span class="time">ALL DAY</span>
							</time> <a href="/Groupe5_Eventech/EventPageServlet?id=${Events.get(i).getIdEvent() }"><img src="/Groupe5_Eventech/imgEventPu/event61.jpg"></a>
							<div class="info">
								<h2 class="title">${Events.get(i).getNomEvent()}</h2>
								<p class="desc">${Events.get(i).getLieuEvent()}  - ${Events.get(i).getDateEvent()}</p>
								<p class="desc">${Events.get(i).getDescriptionEvent()} </p>
								<ul>
									<li><img id="ter" src="/Groupe5_Eventech/img/panda2.png" width="20"
										height="20"><span><a
											style="width: 33%;">6</a></span></li>
									<li style="width: 34%;">${Events.get(i).getPrixEvent()}</li>
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

		<div class="col-lg">

			<br />

			<h2>
				<strong>Rendez-vous événements</strong>
			</h2>

			<br />
			
			<ul class="event-list">
				<c:if test="${Subs.size() > 0}">
					<c:forEach var="i" begin="0" end="${Subs.size() -1}">
						<li><time datetime="${Subs.get(i).getDateEvent()}">
								<span class="day">${Subs.get(i).getDay()}</span> <span class="month">${Subs.get(i).getMonth()}</span> <span
									class="year">${Subs.get(i).getYear()}</span> <span class="time">ALL DAY</span>
							</time> <a href="/Groupe5_Eventech/EventPageServlet?id=${Subs.get(i).getIdEvent() }"><img src="/Groupe5_Eventech/imgEventPu/event61.jpg"></a>
							<div class="info">
								<h2 class="title">${Subs.get(i).getNomEvent()}</h2>
								<p class="desc">${Subs.get(i).getLieu()}  - ${Subs.get(i).getDateEvent()}</p>
								<p class="desc">${Subs.get(i).getDescription()} </p>
								<ul>
									<li><img id="ter" src="/Groupe5_Eventech/img/panda2.png" width="20"
										height="20"><span><a
											style="width: 33%;">6</a></span></li>
									<li style="width: 34%;">${Subs.get(i).getPrix()}</li>
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
		</div>

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