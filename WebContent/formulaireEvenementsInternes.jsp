<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="form.css" />
<title>Formulaire Evénements Internes</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<H1>Pour proposer un événement à vos collaborateurs</H1>

	<P>Rentrez toutes les informations ici
	<form action=" ">

		<table>
			<tr>
				<td>Nom de l'événement:</td>
				<td><input type="text" name="nom_event"></td>
			</tr>
			<tr>
				<td>Lieu:</td>
				<td><input type="text" name="lieu"></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td><input type="date" name="date_event"></td>
			</tr>
			<tr>
				<td>Heure:</td>
				<td><input type="time" name="heure_event"></td>
			</tr>
			<tr>
				<td>Type d'événement:</td>
				<td><input type="text" name="type_event"></td>
			</tr>
			<tr>
				<td>Description de l'événement:</td>
				<td><input type="text" name="description_event"></td>
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