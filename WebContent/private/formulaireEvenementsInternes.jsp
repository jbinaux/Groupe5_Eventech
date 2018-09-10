<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<title>Formulaire Evénements Internes</title>
</head>
<body>

	<jsp:include page="../navbar.jsp"></jsp:include>
	<br/>
	<br/>
	<H1>Pour proposer un événement à vos collaborateurs</H1>

	<P>Rentrez toutes les informations ici</P>
	<c:if test="${error != null}">
		<p>désolé, rentrez des informations correctes !</p>
	</c:if>
	<form action="/Groupe5_Eventech/CreateEventServlet" method="post">

		<table>
			<tr>
				<td>Nom de l'événement:</td>
				<td><input type="text" name="nomEvent" required></td>
			</tr>
			<tr>
				<td>Lieu:</td>
				<td><input type="text" name="lieu" required></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td><input type="date" name="dateEvent" value="yyyy-mm-dd" required></td>
			</tr>
			<tr>
				<td>Heure:</td>
				<td><input type="time" name="heureEvent" value="hh:mm" required></td>
			</tr>
			<tr>
				<td>Description de l'événement:</td>
				<td><input type="text" name="descriptionEvent" required></td>
			</tr>
			<tr>
				<td>Prix:</td>
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
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

	</form>


	<jsp:include page="../footer.html"></jsp:include>



</body>
</html>