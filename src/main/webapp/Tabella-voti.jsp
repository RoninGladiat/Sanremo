<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="sanremoCaratter.Caratteristiche" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<%ArrayList<Caratteristiche> artisti= (ArrayList<Caratteristiche>)session.getAttribute("Artisti"); %>
<div id="header">
	<h1><a href="index.jsp">Sanremo 2022</a></h1>
</div>

<div id="main">
<h1>Voti:</h1>
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
					out.print("Non hai votato questo artista.");
				}else{
					out.print(artisti.get(i).getVoto()+"</p>");
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