<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p style="white-space: break-spaces;">Try this out!</p>
<form action = "PingCmd" method = "get">
	<input type="text" name="pingurl" placeholder="Enter URL to ping"></input>
	<button type = "submit" name = "command" value="ping">ping</button>
	<br /><br />
	
	<input type="text" name="tracerturl" placeholder="Enter URL to trace route"></input>
	<button type = "submit" name = "command" value="tracert">tracert</button>
	<br /><br />
	
	<input type="text" name="nslookupurl" placeholder="Enter URL to lookup"></input>
	<button type = "submit" name = "command" value="nslookup">nslookup</button>
	<br /><br />
	
	<input type="text" name="pathpingurl" placeholder="Enter URL to ping the path"></input>
	<button type = "submit" name = "command" value="pathping">pathping</button>
	<br /><br />
	
	<button type = "submit" name = "command" value="ipconfig">ipconfig</button>
	<br /><br />
	
	<button type = "submit" name = "command" value="getmac">getmac</button>
	<br /><br />
	
	<button type = "submit" name = "command" value="netstat">netstat</button>
	<br /><br />
</form>
<%
String output = request.getParameter("done");
if(output != null){
	for(String line: output.split("\n")){
		%>
		<p><%=line%></p>
		<%
	}
}

%>


</body>
</html>