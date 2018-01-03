<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./css/style.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@include file="./fragments/header.jsp" %>
	</header>
	<nav>
		<c:choose>
		<c:when test="${not empty selfUser.vorname}"> 
			<jsp:include page="./fragments/navigationEingeloggt.jsp"/>
		</c:when>
		<c:otherwise>
					<jsp:include page ="./fragments/navigation.jsp"/>
		</c:otherwise>
		</c:choose>		
	</nav>
	<article>
		<h1>${bar.barname}</h1>
		<h2>Herzlich Willkommen ${bar.barname}</h2> 
		
		<!-- TODO: Profilbild der Bar einfügen, sobald möglich -->
		<section >
			<p>${bar.bbeschreibung}</p>
			<p>${bar.mbeschreibung}</p>
			<p>${bar.lbeschreibung}</p>
			<br> <img src="./Bild?id=${bar.bildId}" class="medium">
		</section>
	</article>

	<footer>
		<%@include file="./fragments/fusszeile.jsp" %>
	</footer>
</body>
</html>