

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

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
		Process process = Runtime.getRuntime().exec("ping "+request.getParameter("pingurl"));
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
	    String line = null;
	    String op = "";
	    while ((line = reader.readLine()) != null) {
	    	op = op.concat(line);
	    	op = op.concat("\n");
	        System.out.println(line+op);
	    }
	    op = op.replace("%","percent");

        System.out.println("op: "+op);
		response.sendRedirect("index.jsp?done="+op);
	}

}
