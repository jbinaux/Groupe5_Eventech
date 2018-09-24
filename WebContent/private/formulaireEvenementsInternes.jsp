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
<link rel="stylesheet" type="text/css" href="eventsPublic.css" />

<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<title>Formulaire Evénements Internes</title>
</head>
<body>
	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<br />
	<br />
	<br />  
	<br />
	<br />
	<br />

	<c:if test="${error != null}">
		<p>désolé, rentrez des informations correctes !</p>
	</c:if>

	<form action="/Groupe5_Eventech/CreateEventServlet" method="post">
		<div id="form">
			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR PROPOSER UN EVENEMENT A VOS COLLABORATEURS
									:</strong>
							</h2></td>
					</tr>

					<br />
					<br />

					<tr>
						<td><p>Nom de l'événement:</p></td>
						<td><input type="text" name="nomEvent" required></td>
					</tr>
					<tr>
						<td><p>Lieu:</p></td>
						<td><input type="text" name="lieu" required></td>
					</tr>
					<tr>
						<td><p>Date:</p></td>
						<td><input id="datepicker" type="date" name="dateEvent" placeholder="aaaa-mm-jj"
							required></td>
					</tr>
					<tr>
						<td><p>Heure:</p></td>
						<td><input id="timepicker" type="time" name="heureEvent" placeholder="hh:mm"
							required></td>
					</tr>
					<tr>
						<td><p>Description de l'événement:</p></td>
						<td><input type="text" name="descriptionEvent" required></td>
					</tr>
					<tr>
						<td><p>Prix:</p></td>
						<td><input type="double" name="prix" required></td>
					</tr>
					<tr>
						<td><p>Capacité:</p></td>
						<td><input type="int" name="capacite" required></td>
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
						<td><input type="submit" value="Valider"></td>
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

	<jsp:include page="/footer.html"></jsp:include>
	<script src="/Groupe5_Eventech/private/DateTime.js" type="text/javascript"></script>
</body>
</html>