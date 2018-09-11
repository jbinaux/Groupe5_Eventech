<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/form.css" />
<title>Modification</title>
</head>
<body>
	<jsp:include page="../navbar.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<br />
	<c:if test="${requestScope.error == 1}">
		<p>d�sol�, une erreure est apparue</p>
	</c:if>
	<form action="/Groupe5_Eventech/UpdateUserServlet" method="post">
		<table>
			<tr>
				<td><p>Nom:</p></td>
				<td><input type="text" name="nom"
					value="${sessionScope.user.getUserNom() }" required></td>
			</tr>
			<tr>
				<td><p>Pr�nom:</p></td>
				<td><input type="text" name="prenom"
					value="${sessionScope.user.getUserPrenom() }" required></td>
			</tr>

			<tr>
				<td><p>Domaine d'activit�:</p></td>
				<td><select name="domaineActivite">
						<c:choose>
							<c:when
								test="${sessionScope.user.getUserDomaineActivite().equals(\"Marketing\") }">
								<option selected="selected">Marketing</option>
								<option>Communication</option>
								<option>D�veloppement</option>
								<option>R�seau</option>
								<option>Autre</option>
							</c:when>
							<c:when
								test="${sessionScope.user.getUserDomaineActivite().equals(\"Communication\") }">
								<option>Marketing</option>
								<option selected="selected">Communication</option>
								<option>D�veloppement</option>
								<option>R�seau</option>
								<option>Autre</option>
							</c:when>
							<c:when
								test="${sessionScope.user.getUserDomaineActivite().equals(\"D�veloppement\") }">
								<option>Marketing</option>
								<option>Communication</option>
								<option selected="selected">D�veloppement</option>
								<option>R�seau</option>
								<option>Autre</option>
							</c:when>
							<c:when
								test="${sessionScope.user.getUserDomaineActivite().equals(\"R�seau\") }">
								<option>Marketing</option>
								<option>Communication</option>
								<option>D�veloppement</option>
								<option selected="selected">R�seau</option>
								<option>Autre</option>
							</c:when>
							<c:when
								test="${sessionScope.user.getUserDomaineActivite().equals(\"Autre\") }">
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
				<td><p>Email:</p></td>
				<td><input type="text" name="email"
					value="${sessionScope.user.getUserMail() }" required></td>
			</tr>

			<tr>
				<td><input type="submit" value="Envoyer"></td>
			</tr>
		</table>
	</form>
	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>