<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="sanremoCaratter.Caratteristiche" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabella voti</title>
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
	
	.card {
   		box-shadow: 10px 10px 5px #dedede;
   		margin-top:10px;
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


linguaIta.put("votes", "Voti:");
linguaIta.put("phrase1", "Hai inserito un voto positivo!");
linguaIta.put("phrase2", "Hai inserito un voto negativo!");
linguaIta.put("phrase3", "Hai inserito un voto negativo");
linguaIta.put("phrase4", "Non hai votato questo artista");


HashMap<String,String> linguaEng = new HashMap<String,String>();


linguaEng.put("votes", "Votes:");
linguaEng.put("phrase1", "You have entered a positive vote!");
linguaEng.put("phrase2", "You have entered a negative vote!");
linguaEng.put("phrase3", "You have entered a neutral vote!");
linguaEng.put("phrase4", "You haven't entered a vote!");

HashMap<String,String> linguaAtt = new HashMap<String,String>();
	if(language=="it"){
		linguaAtt = linguaIta;
	}else{
		linguaAtt = linguaEng;
	}


ArrayList<Caratteristiche> artisti= (ArrayList<Caratteristiche>)session.getAttribute("Artisti");
%>
<div id="header">
	<h1><a href="index.jsp">Sanremo 2022</a></h1>
</div>

<div id="main">
<h1><%=linguaAtt.get("votes") %></h1>
<table>
<% 
session.setAttribute("token2","true");
int b=0;
	out.print("<tr>");
		for(int i=0;i<24;i++){
			
			out.print("<td>");
			out.print("<div class=\"card\" style=\"width: 200px;\">"+
			 " <img class=\"card-img-top\" src=\"img/"+artisti.get(i).getAddressFolderImg()+"\" alt=\"Card image cap\">"+
			  "<div class=\"card-body\">"+
			    "<h4 class=\"card-title\">"+artisti.get(i).getNome()+"</h4><p>");
				if(artisti.get(i).getVoto()==null){
					out.print(linguaAtt.get("phrase4"));
				}else{
					if(artisti.get(i).getVoto()=="Hai inserito un voto positivo."){
						out.print(linguaAtt.get("phrase1"));
						out.print("</p><p>"+artisti.get(i).getOrario()+"</p><br>");
					}else if(artisti.get(i).getVoto()=="Hai inserito un voto negativo."){
						out.print(linguaAtt.get("phrase2</p>"));
						out.print("</p><p>"+artisti.get(i).getOrario()+"</p><br>");
					}else if(artisti.get(i).getVoto()=="Hai inserito un voto neutrale."){
						out.print(linguaAtt.get("phrase3</p>"));
						out.print("</p><p>"+artisti.get(i).getOrario()+"</p><br>");
					}
				}
			out.print(
			  "</div>"+
			"</div>");
			out.print("</td>");
			b+=1;
				if(b==4){
					b=0;
					out.print("</tr><tr>");
				}
		}
		out.print("</tr>");
%>
</table>
</div>
</body>
</html>