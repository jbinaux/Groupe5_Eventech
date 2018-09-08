<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="form.css" />


<title>connection</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<div id="form">
		<form action="LoginUserServlet">



			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR VOUS IDENTIFIER :</strong>
							</h2></td>
					</tr>
					<br />
					<br />

					<tr>
						<td><p>Email :</p></td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td><p>Mot de passe :</p></td>
						<td><input type="password" name="pwd"></td>
					</tr>

					<tr>
						<td><a class="inv"><p>Mot de passe :</p></a></td>

						<td><input type="submit" value="Envoyer"></td>
					</tr>
				</table>
			</div>

		</form>



		<form action="RegisterUserServlet">

			<div id="second">
				<table>
					<tr>
						<td><h2>
								<strong>POUR VOUS INSCRIRE :</strong>
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
						<td><p>Domaine d'activité:</p></td>
						<td><select name="domaineActivite">
								<option>Marketing</option>
								<option>Communication</option>
								<option>Développement</option>
								<option>Réseau</option>
								<option>Autre</option>
						</select> <br /></td>
					</tr>

					<tr>
						<td><p>Email:</p></td>
						<td><input type="text" name="email"></td>
					</tr>

					<tr>
						<td><p>Mot de passe :</p></td>
						<td><input type="password" name="pwd"></td>
					</tr>

					<tr>
						<td><a class="inv"><p>Mot de passe :</p></a></td>
						<td><input type="submit" value="Envoyer"></td>
					</tr>
				</table>
			</div>

		</form>
	</div>

	<br />
	<br />
	<br />
	<br />

	<jsp:include page="footer.html"></jsp:include>

</body>
</html>