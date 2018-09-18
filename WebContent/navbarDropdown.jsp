<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/Groupe5_Eventech/index.jsp"><img
			id="logo" src="/Groupe5_Eventech/img/logo23.png" width="60"
			height="40"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href="/Groupe5_Eventech/index.jsp">Accueil</a></li>
				<c:if test="${sessionScope.user == null}"></c:if>
				<li class="nav-item"><a class="nav-link"
					href="/Groupe5_Eventech/EventsPublicServlet">Evénements</a></li>
				<c:if test="${sessionScope.user == null}"></c:if>
				<li class="nav-item"><a class="nav-link"
					href="/Groupe5_Eventech/connect.jsp">Connection</a></li>
				<c:if test="${sessionScope.user == null}"></c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Contact</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/Groupe5_Eventech/contact.jsp">Contact</a>
						<c:if test="${sessionScope.user != null}"></c:if>
						<a class="dropdown-item" href="#">Contact Pro</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					href="/Groupe5_Eventech/private/espaceM.jsp">Espace membres</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Bienvenue!" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Recherche</button>
			</form>
			<c:if test="${sessionScope.user != null}">
				<form action="/Groupe5_Eventech/LogoutUserServlet">
					<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Déconnexion</button>
				</form>
			</c:if>
		</div>
	</nav>
</body>
</html>