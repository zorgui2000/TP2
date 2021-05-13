<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Equation</title>
</head>
<body>
<%
Float a = Float.parseFloat(request.getParameter("a"));
Float b = Float.parseFloat(request.getParameter("b"));
Float c = Float.parseFloat(request.getParameter("c"));
Float d = b*b-4*a*c;
if (d<0)
{
%>
<body bgcolor="red">
<p> Pas de solutions r�elles</p>
<%} else if (d==0) {%>
<body bgcolor="white">
<p> Une unique solution : X = <%= b/(2*a) %></p>
<%
} else {%>
<body bgcolor="green">
<p> Deux solutions :</p>
<ul>
<li>X1 = <%= -b-Math.sqrt(d)/(2*a) %></li>
<li>X2 = <%= -b+Math.sqrt(d)/(2*a) %></li>
</ul>
<% } %>
</body>
</html> 