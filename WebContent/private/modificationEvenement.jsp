
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<title>Modification</title>
</head>
<body>

	<jsp:include page="../navbar.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<c:if test="${requestScope.error == 1}">
		<p>d�sol�, une erreure est apparue</p>
	</c:if>

	<form action="/Groupe5_Eventech/UpdateEventServlet" method="post">
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
						<td><select name="domaineActivite">
								<c:choose>
									<c:when
										test="${event.getDomaineEvent().equals(\"Marketing\") }">
										<option selected="selected">Marketing</option>
										<option>Communication</option>
										<option>D�veloppement</option>
										<option>R�seau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Communication\") }">
										<option>Marketing</option>
										<option selected="selected">Communication</option>
										<option>D�veloppement</option>
										<option>R�seau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"D�veloppement\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option selected="selected">D�veloppement</option>
										<option>R�seau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"R�seau\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>D�veloppement</option>
										<option selected="selected">R�seau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Autre\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>D�veloppement</option>
										<option>R�seau</option>
										<option selected="selected">Autre</option>
									</c:when>
									<c:otherwise>
										<option>Marketing</option>
										<option>Communication</option>
										<option>D�veloppement</option>
										<option>R�seau</option>
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

	<jsp:include page="../footer.html"></jsp:include>

</body>
</html>