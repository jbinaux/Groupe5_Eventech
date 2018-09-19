
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
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<title>Modification</title>
</head>
<body>

	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<c:if test="${error == 1}">
		<p>désolé, une erreure est apparue</p>
	</c:if>

	<form action="/Groupe5_Eventech/UpdateEventServlet?id=${event.getIdEvent() }" method="post">
		<div id="form">
			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR MODIFIER VOTRE EVENEMENT :</strong>
							</h2></td>
					</tr>

					<br />
					<br />

					<tr>
						<td><p>Nom:</p></td>
						<td><input type="text" name="nom"
							value="${event.getNomEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Lieu:</p></td>
						<td><input type="text" name="lieu"
							value="${event.getLieuEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Date:</p></td>
						<td><input type="text" name="date"
							value="${event.getDateEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Heure:</p></td>
						<td><input type="text" name="heure"
							value="${event.getHeureEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Description:</p></td>
						<td><input type="text" name="description"
							value="${event.getDescriptionEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Prix:</p></td>
						<td><input type="text" name="prix"
							value="${event.getPrixEvent()}" required></td>
					</tr>
					<tr>
						<td><p>Domaine:</p></td>
						<td><select name="domaine">
								<c:choose>
									<c:when
										test="${event.getDomaineEvent().equals(\"Marketing\") }">
										<option selected="selected">Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Communication\") }">
										<option>Marketing</option>
										<option selected="selected">Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Développement\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option selected="selected">Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Réseau\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option selected="selected">Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Autre\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option selected="selected">Autre</option>
									</c:when>
									<c:otherwise>
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:otherwise>
								</c:choose>
						</select> <br /></td>
					</tr>
					<tr>
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

	<jsp:include page="/footer.html"></jsp:include>

</body>
</html>