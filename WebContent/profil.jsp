<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="profil.css" />
<title>profil</title>
</head>
<body>
	<jsp:include page="navbar.html"></jsp:include>
	<br />
	<br />
	<br />
	<br />

	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="img/votre-photo-ici.jpg" width="250" height="250">
			</div>


			<br /> <br />

			<h2>
				<strong>{NOM}</strong>
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

		</div>

	</div>
	
	<br />
	<br />
	
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>