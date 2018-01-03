<!DOCTYPE html>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
<link href="./css/style.css" type="text/css" rel="stylesheet">
<link href="./css/formStyle.css" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>IN-Bars Registrierung f�r Bars</title>
</head>
<body>
	<header>
		<%@include file="./fragments/header.jsp"%>
	</header>
	<nav>
		<c:choose>
			<c:when test="${not empty selfUser.vorname}">
				<jsp:include page="./fragments/navigationEingeloggt.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include page="./fragments/navigation.jsp" />
			</c:otherwise>
		</c:choose>
	</nav>

	<article>
		<h2>Registrierung f�r Bars</h2>
		<p>
			Das ist die Registrierungs-Seite, auf der Sie ihre Bar anmelden
			k�nnen.
		</p>

		<form id="barBearbeiten" action="BarBearbeiten" method="post"
			enctype="multipart/form-data">
			<p>
				<label for="barname">Name der Bar: </label> 
				<input type="text" name="barname" id="barname"> 
				<input type="hidden" name="barid" value="${bar.barid }">
			</p>
			<br>
			<br>
			<fieldset><legend>Informationen zum Gesch�ftsf�hrer</legend>
			<p>
				<label for="vorname"> Gesch�ftsf�hrer: </label> 
				<input type="text" name="vorname" id="vorname" value="${bar.vorname}"> 
				<input type="text" name="nachname" id="nachname" value="${bar.nachname}">
			</p>
			<p>
				<label for="chefmail"> E-Mail-Adresse des Gesch�ftsf�hrers:</label> 
				<input type="email" name="chefmail" id="chefmail" value="${bar.chefmail}">
			</p>
			</fieldset>
			<br>
			<fieldset><legend>Informationen �ber die Bar</legend>
			<p>
				<label for="strasse">Strasse: </label> 
				<input type="text" name="strasse" id="strasse" value="${bar.strasse}">
			</p>
			<p>
				<label for="hausnummer">Hausnummer: </label> 
				<input type="text" name="hausnummer" id="hausnummer" value="${bar.hausnummer}">
			</p>
			<p>
				<label for="plz">PLZ: </label> 
				<input type="text" name="plz" id="plz" value="${bar.plz}">
			</p>
			<p>
				<label for="ort">Ort: </label> 
				<input type="text" name="ort" id="ort" value="${bar.ort}">
			</p>
			<p>
				<label for="barmail">Mail-Adresse der Bar: </label> 
				<input type="text" name="barmail" id="barmail" value="${bar.barmail}">
			</p>
			<p> Musikart:
				<!-- TODO: DB in JSP Seite?? && Selected Musikart-->
				<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/inbar" user="root" />
				<sql:query dataSource="${ds}" var="musikarten">SELECT * FROM musikarten;</sql:query>
				
				<select name="musikart">
					<option value="-1">Alle</option> 
					<c:forEach var ="art" items="${musikarten.rows}" >
						<option value="${art.musikid}">${art.name }</option>
					</c:forEach>
				</select>
				</p>
			</fieldset>
			<fieldset><legend>Profiltext</legend>
			<div id="beschreibung">
				<p>Die folgenden Texte werden zu dem Profil-Text der Bar:</p>
				<p>
					<label for="bbeschreibung">Beschreiben Sie ihre Bar.</label>
					<textarea name="bbeschreibung" id="bbeschreibung" rows="5" cols="100">${bar.bbeschreibung}</textarea>
					
				</p>
				<br>
				<p>
					<label for="mbeschreibung">Beschreiben Sie die Musik, die bei Ihnen gespielt wird: </label>
					<textarea name="mbeschreibung" id="mbeschreibung"rows="5" cols="100">${bar.mbeschreibung}</textarea>
				</p>
				<p>
					<label for="lbeschreibung">Beschreiben Sie, wie ihre Bar erreicht werden kann: </label>
					<textarea name="lbeschreibung" id="lbeschreibung" rows="5" cols="100">${bar.lbeschreibung}</textarea>
				</p>
			</div>
			</fieldset>
			<!-- TODO: Bild �ndern -->
		</form>
	</article>

	<footer>
		<%@include file="./fragments/fusszeile.jsp"%>
	</footer>
</body>
</html>