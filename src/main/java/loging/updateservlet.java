package loging;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name") ;
		String email = request.getParameter("email") ;
		//String password = request.getParameter("password") ;
		String mobile = request.getParameter("mobile") ;
		
		
boolean isTrue ;
		
		isTrue=loginDB.update(name, email, mobile) ;
		
		if(isTrue == true) {
			
			List<Register> accountdetails =loginDB.My(email);
			request.setAttribute("accountdetails" ,accountdetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Account.jsp");
			dis.forward(request, response);
			
			
		}else {
			List<Register> accountdetails =loginDB.My(email);
			request.setAttribute("accountdetails" ,accountdetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Account.jsp");
			dis.forward(request, response);
		}
	
		
		
	}

}
