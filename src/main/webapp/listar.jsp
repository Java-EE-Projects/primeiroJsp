<%@page import="java.util.Set"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Listagem do arquivo propos.txt </title>
</head>
<body>

<%!
	Properties props = new Properties();
%>

<%
	InputStream inputStream = application.getResourceAsStream("/WEB-INF/props.txt");
	props.load(inputStream);
	inputStream.close();
	
	Set<Object> keys = props.keySet();
%>

<TABLE border="1" width="100%">
	<TR>
		<TD><STRONG> Nome </STRONG></TD>
		<TD><STRONG> Valor </STRONG></TD>
	</TR>
	
	<% for (Object k : keys) { %>
	<TR>
		<TD> <%= k %> </TD>
		<TD> <%= props.getProperty((String) k) %> </TD>
	</TR>
	
	<% } %>
</TABLE>

</body>
</html>
