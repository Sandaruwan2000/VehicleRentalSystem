package loging;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/viewservlet")
public class viewservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		List<Register> accountdetails =loginDB.list();
				request.setAttribute("accountdetails" ,accountdetails);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("view.jsp");
				dis.forward(request, response);
	}

}
