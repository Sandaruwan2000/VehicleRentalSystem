package loging;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Registerservlet")
public class Registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        response.setContentType("text/html");

		String name = request.getParameter("name") ;
		String email = request.getParameter("email") ;
		String password = request.getParameter("password") ;
		String mobile = request.getParameter("mobile") ;
		
		
		boolean dt ;
		
		dt = loginDB.register(name, email, mobile, password);
		
		if(dt==true) {
			
			RequestDispatcher d = request.getRequestDispatcher("Login.jsp") ;
			d.forward(request, response);
			
		}else {
			
			
	
			
		
		boolean q ;
			
			q = loginDB.compare(email) ;
			if(q) {
				
			    out.println("<script type='text/javascript'>");
                out.println("alert('Email already exists');");
                out.println("location='Register.jsp'");
               
                out.println("</script>");
				
			}else {
			

			RequestDispatcher d = request.getRequestDispatcher("unsuccess.jsp") ;
			d.forward(request, response);
			}
			
		}
		
	}

}
