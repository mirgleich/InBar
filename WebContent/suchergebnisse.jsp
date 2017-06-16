<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ergebnisse der Suche</title>
</head>
<body>
	<nav>
	<%@include file="navigation.jsp" %>
	</nav>
	
	<h1>Suchergebnisse</h1>
	<h3>Ihre Sucheingaben:</h3>
	<br>
	<b>Gesuchter Begriff </b>${param.suchbegriff}
	<br>
	<b>Du suchst nach:</b>${param.suchart}
	<br>Musikart: ${param.musikart}
	<table>
		<tr>
		<th>BarID</th>
		<th>Name</th>
		</tr>
		<c:forEach var="bar" items="${suchergebnisse}">
			<tr>
				<td>${bar.barid}</td>
				<td>"${bar.barname}"</td>
			</tr>
		</c:forEach>
	</table>
	<footer>
		<%@include file="fusszeile.jsp" %>
	</footer>
</body>

</html>