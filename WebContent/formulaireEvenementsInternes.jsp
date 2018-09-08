<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="controller.UserController" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="form.css" />
<title>Formulaire Evénements Internes</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	<br/>
	<br/>
	<H1>Pour proposer un événement à vos collaborateurs</H1>

	<P>Rentrez toutes les informations ici</P>
	<%
		if (request.getParameter("error") != null) {
			out.print("<p>désolé, rentrez des informations correctes !</p>");
		}
	%>
	<form action="CreateEventServlet">

		<table>
			<tr>
				<td>Nom de l'événement:</td>
				<td><input type="text" name="nomEvent"></td>
			</tr>
			<tr>
				<td>Lieu:</td>
				<td><input type="text" name="lieu"></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td><input type="date" name="dateEvent" value="yyyy-mm-dd"></td>
			</tr>
			<tr>
				<td>Heure:</td>
				<td><input type="time" name="heureEvent" value="hh:mm"></td>
			</tr>
			<tr>
				<td>Description de l'événement:</td>
				<td><input type="text" name="descriptionEvent"></td>
			</tr>
			<tr>
				<td>Prix:</td>
				<td><input type="double" name="prix"></td>
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


	<jsp:include page="footer.html"></jsp:include>



</body>
</html>