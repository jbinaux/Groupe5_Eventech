<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="controller.UserController"%>
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
	<%
		UserController user = (UserController) session.getAttribute("user");
	%>
	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="/Groupe5_Eventech/img/votre-photo-ici.jpg" width="250" height="250">
			</div>


			<br /> <br />

			<h2>
				<strong> 
				<%
			 	if (user != null) 
			 	{
			 		out.print(user.getUserNom() + " " + user.getUserPrenom());
			 	}
				 %>
				</strong>
			</h2>
			<p>blabla-blabla</p>
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
				et contenant du sens est source de distractions, et emp�che de se
				concentrer sur la mise en page elle-m�me.</p>
			<p>L'avantage du Lorem Ipsum sur un texte g�n�rique comme 'Du
				texte. Du texte. Du texte.' est qu'il poss�de une distribution de
				lettres plus ou moins normale, et en tout cas comparable avec celle
				du fran�ais standard.</p>
			<p>De nombreuses suites logicielles de mise en page ou �diteurs
				de sites Web ont fait du Lorem Ipsum leur faux texte par d�faut, et
				une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux
				sites qui n'en sont encore qu'� leur phase de construction.
				Plusieurs versions sont apparues avec le temps, parfois par
				accident, souvent intentionnellement (histoire d'y rajouter de
				petits clins d'oeil, voire des phrases embarassantes).</p>
			<p>blabla</p>
			<p>blabla</p>
			
			<a href="private/formulaireEvenementsInternes.jsp">Cr�er un �v�nement</a>
		</div>


	</div>


	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>