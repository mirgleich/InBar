<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
	<%@include file="navigation.jsp" %>
	</nav>
	
	<h1>Registrierung Fehlgeschlagen</h1>
	Ihr Username ${request.username} ist leider schon vergeben. Bitte
	Versuchen sie einen Anderen.

	<footer>
		<%@include file="fusszeile.jsp" %>
	</footer>
</body>
</html>