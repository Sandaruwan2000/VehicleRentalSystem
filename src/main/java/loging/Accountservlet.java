package loging;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Accountservlet")
public class Accountservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String email = request.getParameter("email");
		
		boolean isTrue; 
	
		isTrue =loginDB.mylog(email);
		
		if(isTrue == true) {
			
			List<Register> accountdetails =loginDB.My(email);
			request.setAttribute("accountdetails" ,accountdetails);
			
		
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Account.jsp");
			dis.forward(request, response);
			
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Email  Invalid');");
			out.println("location='front.jsp'");
			out.println("</script>");
		}
}
}
