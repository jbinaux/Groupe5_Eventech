<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/private/profil.css" />
<title>profil</title>
</head>
<body>
	<jsp:include page="../navbar.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<br />
	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="/Groupe5_Eventech/img/votre-photo-ici.jpg" width="250" height="250">
			</div>


			<br /> <br />

			<h2>
				<strong> 
				<c:if test="${sessionScope.user != null}">
					${sessionScope.user.getUserNom() } ${sessionScope.user.getUserPrenom() }
				</c:if>
				</strong>
			</h2>
			<a href="private/updateUser.jsp">Modifier mes informations</a>
			<p>blabla-blabla</p>
			<c:if test="${sessionScope.user.isUserAdmin() }">
				<a href="admin/admin">administrer le site</a>
			</c:if>
			<p>blabla-blabla</p>
			<p>blabla-blabla</p>


		</div>

		<div id="column2">

			<h2>
				<strong>{STATUT}</strong>
			</h2>

			<br />

			<ul>
				<c:if test="${Events.size() > 0}">
					<c:forEach var="i" begin="0" end="${Events.size() -1}">
						<li>${Events.get(i).getNomEvent()}</li>
					</c:forEach>
				</c:if>
			</ul>

			<br />

			<form
				action="/Groupe5_Eventech/private/formulaireEvenementsInternes.jsp">
				<input type="submit" value="Cr�er un �v�nement">
			</form>

		</div>


	</div>


	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>
</body>
</html>