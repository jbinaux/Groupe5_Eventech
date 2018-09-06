<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>espace membres</title>
<link rel="stylesheet" type="text/css" href="form.css" />
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

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
						<td><a class="inv"><p>Mot de passe :</p></a></td>
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

	<jsp:include page="footer.html"></jsp:include>


</body>
</html>