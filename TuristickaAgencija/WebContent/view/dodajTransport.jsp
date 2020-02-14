<%@page import="model.Destinacija"%>
<%@page import="javax.persistence.metamodel.ListAttribute"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>transport</title>
	<link rel = "stylesheet"
			 type = "text/css"
			href ="../css/style.css"
	/>
</head>
<body>

	<div id = "plavaCrta">
		LOGO
	</div>
	
	
	<%
	List<Destinacija>lista=(List<Destinacija>)request.getAttribute("listaDestinacija");
	
	%>
	
	
	<form>
	
	<select>
	<% for (Destinacija d : lista)%>
	
	</select>
	<br><br>
	
	<label>
	SOPSTVENI
	
	<input type="radio" name= "radioDugme" value= "sopstveni">
	AVIO 
	
	<input type="radio" name= "radioDugme" value= "avio">
	
	BUS
	
	<input type="radio" name= "radioDugme" value= "autobus">
	
	
	</label>
	
	
	</form>
	
	
	
	
	
	
	
	
	
<p><%d.getDrzava()%>../<%d.getMesto()%></p>
</body>
</html>