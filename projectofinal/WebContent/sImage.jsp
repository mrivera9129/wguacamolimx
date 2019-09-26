<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<% 
HttpSession hs = request.getSession();
%>
<body>
<h1>File Demo</h1>
<p>
<img src="data:image/jpeg;base64,${imgBase}" />
</p>
</body>
</html>