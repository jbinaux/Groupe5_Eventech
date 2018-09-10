<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/private/profil.css" />
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
				<img src="/Groupe5_Eventech/img/votre-photo-ici.jpg" width="250" height="250">
			</div>


			<br /> <br />

			<h2>
				<strong> 
				<c:if test="${sessionScope.user != null}">
					<strong>${sessionScope.user.getUserNom() } ${sessionScope.user.getUserPrenom() }</strong>
				</c:if>
				</strong>
			</h2>
			<a href="private/updateUser.jsp">Modifier mes informations</a>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>


		</div>

		<div id="column2">

			<h2>
				<strong>{STATUT}</strong>
			</h2>

			<br /> <br />

			<p>On sait depuis longtemps que travailler avec du texte lisible
				et contenant du sens est source de distractions, et empêche de se
				concentrer sur la mise en page elle-même.</p>
			<p>L'avantage du Lorem Ipsum sur un texte générique comme 'Du
				texte. Du texte. Du texte.' est qu'il possède une distribution de
				lettres plus ou moins normale, et en tout cas comparable avec celle
				du français standard.</p>
			<p>De nombreuses suites logicielles de mise en page ou éditeurs
				de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et
				une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux
				sites qui n'en sont encore qu'à leur phase de construction.
				Plusieurs versions sont apparues avec le temps, parfois par
				accident, souvent intentionnellement (histoire d'y rajouter de
				petits clins d'oeil, voire des phrases embarassantes).</p>
			<p>blabla</p>
			<p>blabla</p>
			
			<a href="private/formulaireEvenementsInternes.jsp">Créer un évènement</a>
		</div>


	</div>


	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>