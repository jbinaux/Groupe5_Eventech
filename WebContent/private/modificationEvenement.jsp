<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modification événements</title>
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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css"
	integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/solid.css"
	integrity="sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/regular.css"
	integrity="sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css"
	integrity="sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/Groupe5_Eventech/main.css" />
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/Groupe5_Eventech/FormTest.css" />
</head>
<body>
	<jsp:include page="/navbarDropdown.jsp"></jsp:include>

	<c:if test="${error == 1}">
		<p>Désolé, une erreure est apparue!</p>
	</c:if>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-6">
				<form
					action="/Groupe5_Eventech/UpdateEventServlet?id=${event.getIdEvent() }"
					method="post">
					<br>
					<h2>
						<br> <br> <strong>POUR MODIFIER VOTRE EVENEMENT</strong>
					</h2>
					<br> <label for="validationDefaultUsername">Nom de
						l'événement</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-users"></i></span>
						</div>
						<input type="text" name="nom" value="${event.getNomEvent()}"
							required class="form-control" id="validationDefaultUsername"
							aria-describedby="inputGroupPrepend2">
					</div>
					<br> <label for="validationDefaultUsername">Lieu où se
						déroule l'événement</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-map-marked-alt"></i></span>
						</div>
						<input type="text" name="lieu" value="${event.getLieuEvent()}"
							required class="form-control" id="validationDefaultUsername"
							aria-describedby="inputGroupPrepend2">
					</div>
					<br> <label for="validationDefaultUsername">Date
						prévue</label>
					<div class="input-group">
						<div class="input-group-prepend"></div>
						<input id="datepicker" type="date" name="date"
							value="${event.getDateEvent()}" required class="form-control"
							placeholder="aaaa-mm-jj">
					</div>
					<br> <label for="validationDefaultUsername">Heure
						prévue</label>
					<div class="input-group">
						<div class="input-group-prepend"></div>
						<input id="timepicker" type="time" name="heure"
							value="${event.getHeureEvent()}" required class="form-control"
							placeholder="hh:mm">
					</div>
					<div class="form-group">
						<br> <label for="exampleFormControlTextarea1">Description
							de l'événement</label>
						<textarea type="text" name="description" required
							class="form-control" rows="3">${event.getDescriptionEvent()}</textarea>
					</div>
					<br> <label for="validationDefaultUsername">Prix</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-euro-sign"></i></span>
						</div>
						<input type="text" name="prix" value="${event.getPrixEvent()}"
							required class="form-control" id="validationDefaultUsername"
							aria-describedby="inputGroupPrepend2">
					</div>
					<br> <label for="validationDefaultUsername">Domaine
						d'activité</label>
					<div class="form-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2"><i
								class="fas fa-briefcase"></i></span> <select class="custom-select"
								name="domaineActivite" required>
								<option selected>Choisir un domaine</option>
								<c:choose>
									<c:when
										test="${event.getDomaineEvent().equals(\"Marketing\") }">
										<option selected="selected">Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Communication\") }">
										<option>Marketing</option>
										<option selected="selected">Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when
										test="${event.getDomaineEvent().equals(\"Développement\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option selected="selected">Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when test="${event.getDomaineEvent().equals(\"Réseau\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option selected="selected">Réseau</option>
										<option>Autre</option>
									</c:when>
									<c:when test="${event.getDomaineEvent().equals(\"Autre\") }">
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option selected="selected">Autre</option>
									</c:when>
									<c:otherwise>
										<option>Marketing</option>
										<option>Communication</option>
										<option>Développement</option>
										<option>Réseau</option>
										<option>Autre</option>
									</c:otherwise>
								</c:choose>
							</select>
						</div>
					</div>
					<br>
					<button class="btn btn-outline-light" id="V" type="submit">Valider</button>
				</form>
				<br>
			</div>
		</div> 
	</div>

	<jsp:include page="/footer.html"></jsp:include>

	<script>
		$('#datepicker').datepicker({
			uiLibrary : 'bootstrap4',
			format : 'yyyy-mm-dd'
		});

		$('#timepicker').timepicker({
			uiLibrary : 'bootstrap4',
			mode : '24hr'
		});
	</script>

</body>
</html> 