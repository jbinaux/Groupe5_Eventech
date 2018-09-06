<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="form.css" />
<title>contact</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	
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
                <tr> <td><p>Message:</p></td><td><textarea name="message"></textarea></td></tr>
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
	
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>