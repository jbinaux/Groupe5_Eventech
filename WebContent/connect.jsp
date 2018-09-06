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

	<jsp:include page="navbar.jsp"></jsp:include>

	<br />
	<br />
	<br />
	<%
	if(request.getParameter("error") != null)
	{
		if (request.getParameter("error").equals("1")) {
			out.print("wrong email");
		} else if (request.getParameter("error").equals("2")) {
			out.print("wrong password");
		}
	}
	%>
	<br />
	<br />
	<br />
	<br />
	<br />


	<div id="form">
		<form action="LoginUserServlet">



			<div id="first">
				<table>
					<tr>
						<td><h2>
								<strong>POUR VOUS IDENTIFIER :</strong>
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



		<form action="RegisterUserServlet">

			<div id="second">
				<table>
					<tr>
						<td><h2>
								<strong>POUR VOUS INSCRIRE :</strong>
							</h2></td>
					</tr>

					<br />
					<br />

					<tr>
						<td><p>Nom:</p></td>
						<td><input type="text" name="nom"></td>
					</tr>
					<tr>
						<td><p>Prénom:</p></td>
						<td><input type="text" name="prenom"></td>
					</tr>

					<tr>
						<td><p>Domaine d'activité:</p></td>
						<td><select name="choix">
								<option>Autre</option>
								<option>marketing</option>
								<option>communication</option>
								<option>réseau</option>
								<option>développement</option>
						</select> <br /></td>
					</tr>

					<tr>
						<td><p>Email:</p></td>
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

	<jsp:include page="footer.html"></jsp:include>

</body>
</html>