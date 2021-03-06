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
<title>Sanremo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
	body {
		font-family: Tahoma;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	
	.card {
   		box-shadow: 10px 10px 5px #dedede;
   		margin-top:10px;
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
Locale locale = request.getLocale(); //istanza oggetto
String language = locale.getLanguage(); //chiamo metodo lingua

HashMap<String,String> linguaIta = new HashMap<String,String>();


linguaIta.put("main", "Artisti di Sanremo 2022:");
linguaIta.put("tablevotes", "Tabella con tutti i voti!");
linguaIta.put("bottonevoto", "Vota questo artista!");


HashMap<String,String> linguaEng = new HashMap<String,String>();


linguaEng.put("main", "Artists of Sanremo 2022:");
linguaEng.put("tablevotes", "Table with al votes!");
linguaEng.put("bottonevoto", "Rate this artist!");
HashMap<String,String> linguaAtt = new HashMap<String,String>();
	if(language=="it"){
		linguaAtt = linguaIta;
	}else{
		linguaAtt = linguaEng;
	}


%>

<div id="header">
	<h1><a href="index.jsp">Sanremo 2022</a></h1>
</div>

<div id="main">
	<h3><%=linguaAtt.get("main") %></h3>
	<table>
<%

Caratteristiche Artist1 = new Caratteristiche();
Caratteristiche Artist2 = new Caratteristiche();
Caratteristiche Artist3 = new Caratteristiche();
Caratteristiche Artist4 = new Caratteristiche();
Caratteristiche Artist5 = new Caratteristiche();
Caratteristiche Artist6 = new Caratteristiche();
Caratteristiche Artist7 = new Caratteristiche();
Caratteristiche Artist8 = new Caratteristiche();
Caratteristiche Artist9 = new Caratteristiche();
Caratteristiche Artist10 = new Caratteristiche();
Caratteristiche Artist11 = new Caratteristiche();
Caratteristiche Artist12 = new Caratteristiche();
Caratteristiche Artist13 = new Caratteristiche();
Caratteristiche Artist14 = new Caratteristiche();
Caratteristiche Artist15 = new Caratteristiche();
Caratteristiche Artist16 = new Caratteristiche();
Caratteristiche Artist17 = new Caratteristiche();
Caratteristiche Artist18 = new Caratteristiche();
Caratteristiche Artist19 = new Caratteristiche();
Caratteristiche Artist20 = new Caratteristiche();
Caratteristiche Artist21 = new Caratteristiche();
Caratteristiche Artist22 = new Caratteristiche();
Caratteristiche Artist23 = new Caratteristiche();
Caratteristiche Artist24 = new Caratteristiche();



String token=(String)session.getAttribute("token");

if(token!="true"){
	ArrayList<Caratteristiche> artisti= new ArrayList<Caratteristiche>();

	Artist1.setNome("Achille Lauro");
	Artist1.setAddressFolderImg("Achille-Lauro.jpg");
	artisti.add(Artist1);
	
	Artist2.setNome("Aka 7even");
	Artist2.setAddressFolderImg("Aka-7even.jpg");
	artisti.add(Artist2);
	
	Artist3.setNome("Ana Mena");
	Artist3.setAddressFolderImg("Ana-mena.jpg");
	artisti.add(Artist3);
	
	Artist4.setNome("Dargen D'Amico");
	Artist4.setAddressFolderImg("Dargen-d'amico.jpg");
	artisti.add(Artist4);
	
	Artist5.setNome("Ditonellapiaga con Rettore");
	Artist5.setAddressFolderImg("Ditonellapiaga-con-Rettore.jpg");
	artisti.add(Artist5);
	
	Artist6.setNome("Elisa");
	Artist6.setAddressFolderImg("Elisa.jpg");
	artisti.add(Artist6);
	
	Artist7.setNome("Emma");
	Artist7.setAddressFolderImg("Emma.jpg");
	artisti.add(Artist7);

	Artist8.setNome("Gianni Morandi");
	Artist8.setAddressFolderImg("Gianni-Morandi.jpg");
	artisti.add(Artist8);
	
	Artist9.setNome("Giusy Ferreri");
	Artist9.setAddressFolderImg("giusy-ferreri.jpg");
	artisti.add(Artist9);
	
	Artist10.setNome("Highsnob e Hu");
	Artist10.setAddressFolderImg("highsnob-hu.jpg");
	artisti.add(Artist10);
	
	Artist11.setNome("Irama");
	Artist11.setAddressFolderImg("Irama.jpg");
	artisti.add(Artist11);
	
	Artist12.setNome("Iva ZanicchiK");
	Artist12.setAddressFolderImg("iva-zanicchik.jpg");
	artisti.add(Artist12);
	
	Artist13.setNome("La Rappresentante di Lista");
	Artist13.setAddressFolderImg("La-Rappresentante-di-Lista.jpg");
	artisti.add(Artist13);
	
	Artist14.setNome("Le Vibrazioni");
	Artist14.setAddressFolderImg("Le-Vibrazioni.jpg");
	artisti.add(Artist14);
	
	Artist15.setNome("Mahmood e Blanco");
	Artist15.setAddressFolderImg("Mahmood e Blanco.jpg");
	artisti.add(Artist15);
	
	Artist16.setNome("Massimo Ranieri");
	Artist16.setAddressFolderImg("Massimo-Ranieri.jpg");
	artisti.add(Artist16);
	
	Artist17.setNome("Matteo Romano");
	Artist17.setAddressFolderImg("Matteo-Romano.jpg");
	artisti.add(Artist17);
	
	Artist18.setNome("Michele Bravi");
	Artist18.setAddressFolderImg("Michele-bravi.jpg");
	artisti.add(Artist18);
	
	Artist19.setNome("Noemi");
	Artist19.setAddressFolderImg("Noemi.jpg");
	artisti.add(Artist19);
	
	Artist20.setNome("Rkomi");
	Artist20.setAddressFolderImg("Rkomi.jpg");
	artisti.add(Artist20);
	
	Artist21.setNome("Sangiovanni");
	Artist21.setAddressFolderImg("sangiovanni.jpg");
	artisti.add(Artist21);
	
	Artist22.setNome("Tananai");
	Artist22.setAddressFolderImg("Tananai.jpg");
	artisti.add(Artist22);
	
	Artist23.setNome("Yuman");
	Artist23.setAddressFolderImg("Yuman.jpg");
	artisti.add(Artist23);
	
	Artist24.setNome("Fabrizio Moro");
	Artist24.setAddressFolderImg("Fabrizio-Moro.jpg");
	artisti.add(Artist24);
	
	session.setAttribute("Artisti",artisti);
	
	int b=0;
	out.print("<tr>");
		for(int i=0;i<24;i++){
			out.print("<td>");
			out.print("<div class=\"card\" style=\"width: 200px;\">"+
			 " <img class=\"card-img-top\" src=\"img/"+artisti.get(i).getAddressFolderImg()+"\" alt=\"Card image cap\">"+
			  "<div class=\"card-body\">"+
			    "<h6 class=\"card-title\">"+artisti.get(i).getNome()+"</h6>"+
			    "<a href=\"Voto.jsp?indice="+i+"\" class=\"btn btn-primary\">"+linguaAtt.get("bottonevoto")+"</a>"+
			  "</div>"+
			"</div>");
			out.print("</td>");
			b+=1;
				if(b==4){
					b=0;
					out.print("</tr><tr>");
				}
		}
	
}else{
	ArrayList<Caratteristiche> artisti2= (ArrayList<Caratteristiche>)session.getAttribute("Artisti");
	
	String token2 = (String)session.getAttribute("token2");
	if(token2!="true"){
		String token3=request.getParameter("token3");
		if(token3.equals("Cambiovoto")){
			int indic = (int)session.getAttribute("ind");
			String posOneg="";
			String temp=request.getParameter("voto");
				if(temp!=""){
					int voto = Integer.parseInt(request.getParameter("voto"));
						if(voto>0){
							posOneg="Hai inserito un voto positivo.";
						}else if(voto<0){
							posOneg="Hai inserito un voto negativo.";
						}else if(voto==0){
							posOneg="Hai inserito un voto neutrale.";
						}
				}
			artisti2.get(indic).setVoto(posOneg);
			session.setAttribute("Artisti",artisti2);
		}
	}

	session.setAttribute("token2","false");
	int b=0;
	out.print("<tr>");
		for(int i=0;i<24;i++){
			out.print("<td>");
			out.print("<div class=\"card\" style=\"width: 200px;\">"+
			 " <img class=\"card-img-top\" src=\"img/"+artisti2.get(i).getAddressFolderImg()+"\" alt=\"Card image cap\">"+
			  "<div class=\"card-body\">"+
			    "<h6 class=\"card-title\">"+artisti2.get(i).getNome()+"</h6>"+
			    "<a href=\"Voto.jsp?indice="+i+"\" class=\"btn btn-primary\">"+linguaAtt.get("bottonevoto")+"</a>"+
			  "</div>"+
			"</div>");
			out.print("</td>");
			b+=1;
				if(b==4){
					b=0;
					out.print("</tr><tr>");
				}
		}
}
	
%>
		</tr>
		<tr>
			<td></td>
			<td><a href="Tabella-voti.jsp"><%=linguaAtt.get("tablevotes") %></a></td>
			<td></td>
		</tr>
	</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>