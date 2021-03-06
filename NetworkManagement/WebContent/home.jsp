<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Network Commands Simulator</title>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@700&display=swap" rel="stylesheet">
 	<!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">
        <div class="title-outer">
             <h1 class="title" >NETWORK COMMANDS SIMULATOR</h1> 
        </div>
         <div class="header" style="padding-left: 90px;padding-top: 80px; ;">
            
             <!-- <img src="images/header-text.png" alt="">  -->
        </div> 
        <div class="container">
            <form id="command-form" class="command-form" action = "PingCmd" method="get">
                <div class="form-group">
                    <div class="form-pingurl">
                        <label for="pingurl">URL</label>
                        <input type="text" id="pingurl" name="pingurl" placeholder="Enter URL to ping" />
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options1" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="ping" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-tracerturl">
                        <label for="tracerturl">URL</label>
                        <input type="text" id="tracerturl" name="tracerturl" placeholder="Enter URL to trace route" />
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options2" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="tracert" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-nslookupurl">
                        <label for="nslookupurl">URL</label>
                        <input type="text" id="nslookupurl" name="nslookupurl" placeholder="Enter URL to lookup" />
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options3" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="nslookup" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-pathpingurl">
                        <label for="pathpingurl">URL</label>
                        <input type="text" id="pathpingurl" name="pathpingurl" placeholder="Enter URL to ping the path" />
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options4" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="pathping" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-ipconfig">
                        <!-- <label for="ipconfig">URL</label>
                        <input type="text" id="ipconfig" name="ipconfig" placeholder="Enter URL to nslookup" /> -->
                        <p class="orb-font"><b>FOR IP CONFIG</b></p>
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options5" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="ipconfig" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-getmac">
                        <!-- <label for="getmac">URL</label>
                        <input type="text" id="getmac" name="getmac" placeholder="Enter URL to nslookup" /> -->
                        <p class="orb-font"><b>FOR GETMAC</b></p>
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options6" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="getmac" />
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="form-netstat">
                        <!-- <label for="netstat">URL</label>
                        <input type="text" id="netstat" name="netstat" placeholder="Enter URL to nslookup" /> -->
                        <p class="orb-font"><b>FOR NETSTAT</b></p>
                    </div>
                    <div class="form-Options"> 
                        <label for="Options">Option</label> 
                        <input type="text" id="Options" name="options7" class="Options" placeholder="If required" />
                        
                    </div> 
                    <div class="form-submit">
                        <input type="submit" onClick="document.getElementById('bottom').scrollIntoView();" name="command" id="submit" class="submit" value="netstat" />
                    </div>
                </div>
            </form>
        </div>

        
    </div>
    <div id="bottom" >
        <div>
            <p id="end">RESPONSE:</p>
        </div>

    </div>
<%

String output = request.getParameter("done");
if(output != null){
	%>
	<div id="op" class="orb-font">
	<%
	for(String line: output.split("\n")){
		%>
		<p id="end" style="margin-top:0px;margin-bottom:0px;"><%=line%></p>
		<%
	}
	%>
	</div>
	<%
}
if(request.getParameter("done")!=null){
	%>
	<script>
	document.getElementById("op").scrollIntoView(true);
	</script>
	<%
}
%>


    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/main.js"></script>

</body>
</html>