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
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<title>navbarDropdown</title>
<link rel="stylesheet" type="text/css" href="form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<title>connection</title>
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
	<c:choose>
		<c:when test="${error == 1}"><p>Mauvais email.</p></c:when>
		<c:when test="${error == 2}"><p>Mauvais mot de passe.</p></c:when>
		<c:when test="${error == 3}"><p>Remplissez correctement les informations et réessayez.</p></c:when>
		<c:when test="${error == 4}"><p>Cet email existe déjà!</p></c:when>
	</c:choose>

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
						<td><a class="inv">Mot de passe :</a></td>

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
						<td><input type="text" name="nom" required></td>
					</tr>
					<tr>
						<td><p>Prénom:</p></td>
						<td><input type="text" name="prenom" required></td>
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
						<td><input type="email" name="email" required></td>
					</tr>

					<tr>
						<td><p>Mot de passe :</p></td>
						<td><input type="password" name="pwd" required></td>
					</tr>
                    
					<tr>
						<td><a class="inv">Mot de passe :</a></td>
						<td><input type="submit" value="Envoyer"></td>
					</tr>
					
				</table>
				<br />
				<div class="form-group">
				<p class="help-block" color="black"> Téléchargez votre photo de profil :</p>
                    <label for="exampleInputFile">Choisir un fichier</label>
                    <input type="file" id="exampleInputFile">
                    
                    </div>
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