package punctvamal.Cautare;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/CautarePersoana.jsp")

public class CautarePersoana extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServerException,IOException, ServletException {
		
		request.getRequestDispatcher("/WEB-INF/views/Cautare/CautarePersoana.jsp").forward(request, response);
	
		
	}
		
	
	
	
	
}
