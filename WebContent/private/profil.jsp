<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/private/profil.css" />
<title>profil</title>
</head>
<body>
	<jsp:include page="../navbar.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<br />
	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="/Groupe5_Eventech/img/votre-photo-ici.jpg" width="250"
					height="250">
			</div>


			<br /> <br />

			<h2>
				<strong> <c:if test="${sessionScope.user != null}">
						<p>${sessionScope.user.getUserNom() }
							${sessionScope.user.getUserPrenom() }</p>
					</c:if>
				</strong>
			</h2>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>


		</div>

		<div id="column2">

			<br />

			<h2>
				<strong>Evènements créés</strong>
			</h2>

			<br />

			<ul>
				<li>HAKATHON BNP</li>
				<li>MEETUP SIMPLON</li>
				<li>CONFERENCE GARNIER</li>
				<li>ATELIER "LE BIEN ETRE AU TRAVAIL"</li>
			</ul>

			<br />

			<form action="/Groupe5_Eventech/private/formulaireEvenementsInternes.jsp">
				<input type="submit" value="Créer un évènement">
			</form>   

		</div>


	</div>


	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>