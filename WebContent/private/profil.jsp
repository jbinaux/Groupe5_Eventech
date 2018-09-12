<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/private/profil.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<title>profil</title>
</head>
<body>

	<jsp:include page="../navbar.jsp"></jsp:include>
	
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	
	<div id="section">
		<div id="column1">
			<div id="photo">
				<img src="/Groupe5_Eventech/img/votre-photo-ici.jpg" width="250"
					height="250">
			</div>

			<br /> 
			<br />

			<h2>
				<strong> <c:if test="${sessionScope.user != null}">
					${sessionScope.user.getUserNom() } ${sessionScope.user.getUserPrenom() }
				</c:if>
				</strong>
			</h2>

			<p>Vos informations ici, vos informations ici.</p>
			<p>Vos informations ici, vos informations ici.</p>
			<p>Vos informations ici, vos informations ici.</p>
			<p>Vos informations ici, vos informations ici.</p>
			<p>Vos informations ici, vos informations ici.</p>

			<form action="/Groupe5_Eventech/private/updateUser.jsp">
				<input type="submit" value="Modifier mes informations">
			</form>

		</div>

		<div id="column2">

			<br />

			<h2>
				<strong>Evènements créés</strong>
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
				<input type="submit" value="Créer un évènement">
			</form>

		</div>

	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	
	<jsp:include page="../footer.html"></jsp:include>
	
</body>
</html>