<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css" />
<title>header</title>
</head>
<body>
	<div id="end">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.jsp">G5</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li><a class="inv">septembre is well done yeah ... </a></li>
					<li class="nav-item"><a class="nav-link" href="eventsPU.jsp">Evénements</a>
					</li>
					<%
					if (session.getAttribute("user") == null)
					{
						out.print("<li><a class=\"inv\">sept</a></li>");
						out.print("<li class=\"nav-item\"><a class=\"nav-link\"href=\"connect.jsp\">Connection</a></li>");
					}
					%>
					<li><a class="inv">sept</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
					</li>
					<%
					if (session.getAttribute("user") != null)
					{
						out.print("<li><a class=\"inv\">sept</a></li>");
						out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"profil.jsp\">Profil</a></li>");
					}
					%>
					<li><a class="inv">sept</a></li>
					<li class="nav-item"><a class="nav-link" href="espaceM.jsp">Espace
							membres</a></li>

				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="bienvenue" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
				</form>
			</div>
		</nav>
	</div>

	<IMG id="header" SRC="img/imgH.jpg">


</body>
</html>