<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<title>Modification</title>
</head>
<body>
	<jsp:include page="../navbar.jsp"></jsp:include>
	<br/>
	<br/>
	<br/>
	<br/>
	<form action="UpdateUserServlet">
		<table>
			<tr>
				<td><p>Nom:</p></td>
				<td><input type="text" name="nom"
					value="${sessionScope.user.getUserNom() }"></td>
			</tr>
			<tr>
				<td><p>Prénom:</p></td>
				<td><input type="text" name="prenom"
					value="${sessionScope.user.getUserPrenom() }"></td>
			</tr>

			<tr>
				<td><p>Domaine d'activité:</p></td>
				<td><select name="domaineActivite" value="${sessionScope.user.getUserDomaineActivite() }">
						<option>Marketing</option>
						<option>Communication</option>
						<option>Développement</option>
						<option>Réseau</option>
						<option>Autre</option>
				</select> <br /></td>
			</tr>

			<tr>
				<td><p>Email:</p></td>
				<td><input type="text" name="email"
					value="${sessionScope.user.getUserMail() }"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Envoyer"></td>
			</tr>
		</table>
	</form>
	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>