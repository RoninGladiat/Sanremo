<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="sanremoCaratter.Caratteristiche" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sanremo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
</head>
<body>
<%
Caratteristiche Artist = new Caratteristiche();
ArrayList<Caratteristiche> artisti= new ArrayList<Caratteristiche>();
Artist.setNome("Achille Lauro");
Artist.setAddressFolderImg("Achille-Lauro.jpg");
artisti.add(0,Artist);
Artist.setNome("Aka 7even");
Artist.setAddressFolderImg("Aka-7even.jpg");
artisti.add(1,Artist);
Artist.setNome("Ana Mena");
Artist.setAddressFolderImg("Ana-mena.jpg");
artisti.add(2,Artist);
Artist.setNome("Dargen D'Amico");
Artist.setAddressFolderImg("Dargen-d'amico.jpg");
artisti.add(3,Artist);
Artist.setNome("Ditonellapiaga con Rettore");
Artist.setAddressFolderImg("Ditonellapiaga-con-Rettore.jpg");
artisti.add(4,Artist);
Artist.setNome("Elisa");
Artist.setAddressFolderImg("Elisa.jpg");
artisti.add(5,Artist);
Artist.setNome("Emma");
Artist.setAddressFolderImg("Emma.jpg");
artisti.add(6,Artist);
Artist.setNome("Fabrizio Moro");
Artist.setAddressFolderImg("Fabrizio-Moro.jpg");
artisti.add(7,Artist);
Artist.setNome("Gianni Morandi");
Artist.setAddressFolderImg("Gianni-Morandi.jpg");
artisti.add(8,Artist);
Artist.setNome("Giusy Ferreri");
Artist.setAddressFolderImg("giusy-ferreri.jpg");
artisti.add(9,Artist);
Artist.setNome("Highsnob e Hu");
Artist.setAddressFolderImg("highsnob-hu.jpg");
artisti.add(10,Artist);
Artist.setNome("Irama");
Artist.setAddressFolderImg("Irama.jpg");
artisti.add(11,Artist);
Artist.setNome("Iva ZanicchiK");
Artist.setAddressFolderImg("iva-zanicchik.jpg");
artisti.add(12,Artist);
Artist.setNome("La Rappresentante di Lista");
Artist.setAddressFolderImg("La-Rappresentante-di-Lista.jpg");
artisti.add(13,Artist);
Artist.setNome("Le Vibrazioni");
Artist.setAddressFolderImg("Le_vibrazioni.jpg");
artisti.add(14,Artist);
Artist.setNome("Mahmood e Blanco");
Artist.setAddressFolderImg("Mahmood-e-Blanco.jpg");
artisti.add(15,Artist);
Artist.setNome("Massimo Ranieri");
Artist.setAddressFolderImg("Massimo-Ranieri.jpg");
artisti.add(16,Artist);
Artist.setNome("Matteo Romano");
Artist.setAddressFolderImg("Matteo-Romano.jpg");
artisti.add(17,Artist);
Artist.setNome("Michele Bravi");
Artist.setAddressFolderImg("michele-bravi.jpg");
artisti.add(18,Artist);
Artist.setNome("Noemi");
Artist.setAddressFolderImg("Noemi.jpg");
artisti.add(19,Artist);
Artist.setNome("Rkomi");
Artist.setAddressFolderImg("Rkomi.jpg");
artisti.add(20,Artist);
Artist.setNome("Sangiovanni");
Artist.setAddressFolderImg("Sangiovanni.jpg");
artisti.add(21,Artist);
Artist.setNome("Tananai");
Artist.setAddressFolderImg("Tananai.jpg");
artisti.add(22,Artist);
Artist.setNome("Yuman");
Artist.setAddressFolderImg("Yuman.jpg");
artisti.add(23,Artist);
%>

<div id="header">
	<h1><a href="index.jsp">Sanremo 2022</a></h1>
</div>
<div id="main">
	<h3>Artisti di Sanremo 2022</h3>
	<table>
	<%
	int b=0;
	out.print("<tr>");
		for(int i=0;i<24;i++){
			out.print("<td><a href=\"\"><img src=\"img/"+artisti.get(i).getAddressFolderImg()+"\"/></a></td>");
			b+=1;
				if(b==4){
					b=0;
					out.print("</tr><tr>");
				}
		}
	%>
		</tr>
		<tr>
			<td></td>
			<td><a href="#">Tabella con tutti i voti</a></td>
			<td></td>
		</tr>
	</table>
</div>





















<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>