<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="eventsPublic.css" />
<title>�v�nements</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>



	<div id="event1">
		<div id="columnF">
			<div id="photo">
				<img src="img/heads.jpg" width="350" height="250">
			</div>


			<br /> 

			<h2>
				<strong>Informations �v�nement:</strong>
			</h2>
            
            <h3>Date: 18/09/2018</h3>
			<p>On sait depuis longtemps que travailler avec du texte lisible
				et contenant du sens est source de distractions, et emp�che de se
				concentrer sur la mise en page elle-m�me.</p>




		</div>

		<div id="columnS">

			<h2>
				<strong>Le salon Vivia arrive !</strong>
			</h2>

			<p>On sait depuis longtemps que travailler avec du texte lisible
				et contenant du sens est source de distractions, et emp�che de se
				concentrer sur la mise en page elle-m�me.</p>

			<p>On sait depuis longtemps que travailler avec du texte lisible
				et contenant du sens est source de distractions, et emp�che de se
				concentrer sur la mise en page elle-m�me.</p>

			 



			<form action="LoginUserServlet">


				<div id="form">
					<div id="first">
						<table>
							<tr>
								<td><h2>
										<strong>POUR VOUS INSCRIRE :</strong>
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
								<td><a class="inv">Mot de passe :</a></td>
								<td><input type="submit" value="Envoyer"></td>
							</tr>
						</table>
					</div>
					</div>
			</form>

		</div>


	</div>



	</div>

	<jsp:include page="footer.html"></jsp:include>

</body>
</html>