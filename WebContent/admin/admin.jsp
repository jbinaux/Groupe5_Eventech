<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/admin/admin.css" />
</head>
<body>

	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<div class="section container">
		<div class="row">
			<div class="users col">
				<h3>Utilisateurs</h3>
				<c:forEach var="i" begin="0" end="${users.size() - 1}">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">${users.get(i).getNom()}
								${users.get(i).getPrenom()}</h4>
							<p class="card-text">id = ${users.get(i).getIdUser()}</p>
							<a href="deleteUser?id=${users.get(i).getIdUser()}"><img
								class="icon" src="/Groupe5_Eventech/img/red-cross-th.png" /></a>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="events col">
				<h3>Evenements</h3>
				<c:forEach var="i" begin="0" end="${events.size() - 1}">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">${events.get(i).getNomEvent()}</h4>
							<p class="card-text">id = ${events.get(i).getIdEvent()}<br/>
							date = ${events.get(i).getDateEvent()}<br/>
							description = ${events.get(i).getDescription() }</p>
							<a href="deleteEvent?id=${events.get(i).getIdEvent()}"><img
								class="icon" src="/Groupe5_Eventech/img/red-cross-th.png" /></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>