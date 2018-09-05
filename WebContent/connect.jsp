<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="form.css" />


<title>connection</title>
</head>
<body>

	<jsp:include page="navbar.html"></jsp:include>

	<br />
	<br />
	<br />
	<br />

	<form action="contactSave.jsp">


		<div id="form">
			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>Pour vous identifier :</strong>
							</h2></td>
					</tr>
					<br />
					<br />

					<tr>
						<td>Email :</td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td>Mot de passe :</td>
						<td><input type="password" name="pwd"></td>
					</tr>

					<tr>
					    <td></td>
						<td><input type="submit" value="Envoyer"></td>
					</tr>
				</table>
			</div>
	</form>

	<form action="contactSave.jsp">

		<div id="second">
			<table>
				<tr>
					<td><h2>
							<strong>Pour vous inscrire :</strong>
						</h2></td>
				</tr>
				<br />
				<br />
				<tr>
					<td>Nom:</td>
					<td><input type="text" name="nom"></td>
				</tr>
				<tr>
					<td>Prénom:</td>
					<td><input type="text" name="prenom"></td>
				</tr>

				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"></td>
				</tr>

				<tr>
				    <td></td>
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

	<jsp:include page="footer.html"></jsp:include>

</body>
</html>