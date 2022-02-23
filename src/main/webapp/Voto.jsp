<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date" %>
    <%@page import="java.text.SimpleDateFormat" %>
    <%@page import="java.util.*" %>
    <%@page import="sanremoCaratter.Caratteristiche" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vota artista</title>
</head>
<style>
	body {
		font-family: Tahoma;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	
	a {
		text-decoration: none;
		color: darkblue;
	}
	
	a:hover {
		text-decoration: underline;
	}
	
	img {
		width: 175px;
		height: 250px;
		border: 2px solid #aaa;
	}	
	
	#header {
		background-color: #800000;
		color: #fff;
		padding: 5px;
	}
	
	#header a{
		color: #fff;
		text-decoration: none;
	}
	
	#main table {
		margin: 0 auto;
	}
	
	#footer {
		font: 12px Tahoma;
		margin: 25px 0 50px 0;
	}
	
	#footer a {
		margin-right: 10px;
	}
	
</style>
<body>
<%
Locale locale = request.getLocale(); //istanza oggetto
String language = locale.getLanguage(); //chiamo metodo lingua

HashMap<String,String> linguaIta = new HashMap<String,String>();


linguaIta.put("votes", "Vota:");
linguaIta.put("button", "Invia!");


HashMap<String,String> linguaEng = new HashMap<String,String>();


linguaEng.put("votes", "Rate this artist:");
linguaEng.put("button", "Send!");

HashMap<String,String> linguaAtt = new HashMap<String,String>();
	if(language=="it"){
		linguaAtt = linguaIta;
	}else{
		linguaAtt = linguaEng;
	}


session.setAttribute("token", "true");
ArrayList<Caratteristiche> artisti= (ArrayList<Caratteristiche>)session.getAttribute("Artisti");
int posizione = Integer.valueOf(request.getParameter("indice")).intValue();
session.setAttribute("ind",posizione);


Date data = new Date();
SimpleDateFormat formattazione = new SimpleDateFormat("HH : mm : ss - dd/MM/yyyy");
String dataFormattata = formattazione.format(data);
artisti.get(posizione).setOrario(dataFormattata);
session.setAttribute("Artisti",artisti);
%>
<div id="header">
	<h1><a href="index.jsp?token3=Noncambiovoto">Sanremo 2022</a></h1>
</div>
<div id="main">
	<h3><%=artisti.get(posizione).getNome()%></h3>
	<img src="img/<%=artisti.get(posizione).getAddressFolderImg() %>">
	<form method="POST" action="index.jsp?token3=Cambiovoto">
	<%=linguaAtt.get("votes")  %>
	<input type="number" max="10" min="-10" name="voto" >
	<input type="Submit" name="<%=linguaAtt.get("button")%>">
	</form>
</div>
</body>
</html>