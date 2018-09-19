<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<title>navbarDropdown</title>
<link rel="stylesheet" type="text/css" href="form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<title>contact</title>
</head>
<body>

	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<form action="LoginUserServlet">

		<div id="form">
			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR NOUS CONTACTER :</strong>
							</h2></td>
					</tr>
					
					<br />
					<br />

					<tr>
						<td><p>Nom:</p></td>
						<td><input type="text" name="nom"></td>
					</tr>
					<tr>
						<td><p>Prénom:</p></td>
						<td><input type="text" name="prenom"></td>
					</tr>

					<tr>
						<td><p>Email:</p></td>
						<td><input type="text" name="email"></td>
					</tr>

					<tr>
						<td><p>Sujet:</p></td>
						<td><select name="choix">
								<option>Espace presse</option>
								<option>Recrutement</option>
								<option>Demande event</option>
								<option>Autre</option>
						</select> <br /></td>
					</tr>
					<tr>
						<td><p>Message:</p></td>
						<td><textarea name="message"></textarea></td>
					</tr>
					<tr>
						<td><a class="inv">Mot de passe :</a></td>
						<td><input type="submit" value="Envoyer"></td>
					</tr>
				</table>
			</div>
		</div>
	</form>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="footer.html"></jsp:include>

</body>
</html>