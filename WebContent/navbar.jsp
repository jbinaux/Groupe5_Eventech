<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<title>navbar</title>
</head>
<body>
	<div id="end">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/Groupe5_Eventech/index.jsp">G5</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li><a class="inv">septembre is well done yeah ... </a></li>
					<li class="nav-item"><a class="nav-link" href="eventsPublic.jsp">Evénements</a>
					</li>
					<c:if test="${sessionScope.user == null}">
						<li><a class="inv">sept</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/Groupe5_Eventech/connect.jsp">Connection</a></li>
					</c:if>
					<li><a class="inv">sept</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/Groupe5_Eventech/contact.jsp">Contact</a></li>
					<c:if test="${sessionScope.user != null}">
						<li><a class="inv">sept</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/Groupe5_Eventech/private/profil">Profil</a></li>
					</c:if>
					<li><a class="inv">sept</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/Groupe5_Eventech/private/espaceM.jsp">Espace membres</a></li>

				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="bienvenue" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
				</form>
				<c:if test="${sessionScope.user != null}">
					<a class="inv">se</a>
					<form action="/Groupe5_Eventech/LogoutUserServlet">
						<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Deconnexion</button>
					</form>
				</c:if>
			</div>
		</nav>
	</div>
</body>
</html>