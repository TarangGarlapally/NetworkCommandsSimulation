

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PingCmd
 */
@WebServlet("/PingCmd")
public class PingCmd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print(request.getParameter("command"));
		String command = request.getParameter("command");
		String op = "";
		if(command != null) {
		Process process;
		switch(command) {
			case "ping": process = Runtime.getRuntime().exec("ping "+request.getParameter("pingurl")); break;
			case "tracert": process = Runtime.getRuntime().exec("tracert "+request.getParameter("tracerturl")); break;
			case "nslookup": process = Runtime.getRuntime().exec("nslookup "+request.getParameter("nslookupurl")); break;
			case "pathping": process = Runtime.getRuntime().exec("pathping "+request.getParameter("pathpingurl")); break;
			case "ipconfig": process = Runtime.getRuntime().exec("ipconfig"); break;
			case "getmac": process = Runtime.getRuntime().exec("getmac"); break;
			case "netstat": process = Runtime.getRuntime().exec("netstat"); break;
			default: process = null;
		}
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
	    String line = null;
	    
	    while ((line = reader.readLine()) != null) {
	    	op = op.concat(URLEncoder.encode(line,"UTF-8"));
	    	op = op.concat("%0A");
	        System.out.println(line+op);
	    }
	    
	   // op = op.replace("%","percent");

		}
        System.out.println("op: "+op);
		response.sendRedirect("index.jsp?done="+op);
		
	}

}
