package loging;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/newpasswordservlet")
public class newpasswordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String email = request.getParameter("email") ;
		String password = request.getParameter("password") ;
		
		boolean isTrue ;
		
		isTrue =loginDB.updatepassword(email, password) ;
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('It email is not have account,Frist be register ');");
			out.println("location='Register.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
