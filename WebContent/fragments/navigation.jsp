<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- Navigationsleiste, wenn der User NICHT eingeloggt ist -->
	<div id="main_nav">
	<p> NICHT EINGELOGGT </p>
	<ul>
		<li class="nav1"><a href="startseite.jsp"> Startseite</a></li>
		<li class="nav1"><a href="suche.jsp"> Suche</a>
		<ul>
			<li class="nav2"><a href="barSuche.jsp"> Bars suchen</a></li>
			<li class="nav2"><a href="eventSuche.jsp"> Events suchen</a></li>
			<li class="nav2"><a href="userSuche.jsp"> User suchen</a></li>
		</ul> </li>
		<li class="nav1"><a href="login.jsp"> Login</a></li>
		<li class="nav1"><a href="kontakt.html"> Kontakt</a></li>
	</ul>
	</div>

	
	