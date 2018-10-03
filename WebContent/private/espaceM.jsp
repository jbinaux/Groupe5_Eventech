<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EspaceMembresForm</title>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css"
	integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css"
	integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/regular.css"
	integrity="sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css"
	integrity="sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/FormTest.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
</head>
<body>

	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<c:choose>
		<c:when test="${error == 1}">
			<p>Mauvais email.</p>
		</c:when>
		<c:when test="${error == 2}">
			<p>Mauvais mot de passe.</p>
		</c:when>
		<c:when test="${error == 3}">
			<p>Remplissez correctement les informations et réessayez.</p>
		</c:when>
		<c:when test="${error == 4}">
			<p>Cet email existe déjà!</p>
		</c:when>
	</c:choose>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-6">
				<form action="LoginUserServlet">
					<br>
					<h2>
						<br> <br> <strong>POUR ACCÉDER A NOTRE<br>
							ESPACE PRIVÉ
						</strong>
					</h2>
					<br> <label for="validationDefaultUsername">Email</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-envelope"></i></span>
						</div>
						<input type="text" name="email" class="form-control"
							id="validationDefaultUsername"
							aria-describedby="inputGroupPrepend2" required>
					</div>
					<br> <label for="validationDefaultUsername">Mot de
						passe</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-key"></i></span>
						</div>
						<input type="password" name="pwd" class="form-control"
							id="validationDefaultUsername"
							aria-describedby="inputGroupPrepend2" required>
					</div>
					<br>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="invalidCheck2" required> <label
								class="form-check-label" for="invalidCheck2"> Se
								souvenir de moi </label>
						</div>
					</div>
					<br>
					<button class="btn btn-outline-light" id="V" type="submit">Valider</button>
				</form>
				<br>
			</div>
		</div>
	</div>

	<jsp:include page="/footer.html"></jsp:include>

</body>
</html>