<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>Hey Tarang</p>
<form action = "PingCmd" method = "get">
<input type="text" name="pingurl" placeholder="Enter URL to ping"></input>
<button type = "submit" name = "command" value="ping">Ping</button>
</form>

<p><%=request.getParameter("done") %></p>
</body>
</html>