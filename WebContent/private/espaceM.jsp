<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>espace membres</title>
<link rel="stylesheet" type="text/css" href="form.css" />
</head>
<body>

	<jsp:include page="../navbar.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<form action="LoginUserServlet">


		<div id="form">
			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR ACCÉDER A NOTRE ESPACE PRIVÉ :</strong>
							</h2></td>
					</tr>
					<br />
					<br />

					<tr>
						<td><p>Email :</p></td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td><p>Mot de passe :</p></td>
						<td><input type="password" name="pwd"></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit" value="Envoyer"></td>
					</tr>
				</table>
			</div>
	</form>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="../footer.html"></jsp:include>


</body>
</html>