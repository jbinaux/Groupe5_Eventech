<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
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
						<td><input type="date" name="dateEvent" value="aaaa-mm-jj"
							required></td>
					</tr>
					<tr>
						<td><p>Heure:</p></td>
						<td><input type="time" name="heureEvent" value="hh:mm"
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

	<jsp:include page="../footer.html"></jsp:include>

</body>
</html>