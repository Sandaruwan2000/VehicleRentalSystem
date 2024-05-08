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
import javax.servlet.http.HttpSession;


@WebServlet("/loging")
public class loging extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isTrue; 
		isTrue = loginDB.login(email,password) ;
		
		if(isTrue == true) {
		
			
			HttpSession sessio = request.getSession(true) ;
			sessio.putValue("email",email) ;
			
			if(email.equals("admin@gmail.com")) {
				
				List<Register> accountdetails =loginDB.Account(email, password);
				request.setAttribute("accountdetails" ,accountdetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
				dis.forward(request, response);
				
			}else {
			
			response.sendRedirect("front.jsp");
			}
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Email or Password Invalid');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
	}

}
