package loging;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/searchservlet")
public class searchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		boolean isTrue; 
	
		isTrue =loginDB.mylog(email);
		
		if(isTrue == true) {
			
			List<Register> accountdetails =loginDB.My(email);
			request.setAttribute("accountdetails" ,accountdetails);
			
		
			
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminAccount.jsp");
			dis.forward(request, response);
			
			
		}
		
	}

}
