

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;
import com.speedygrocer.mail.Mail;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pswd=request.getParameter("pwd");
		String email=request.getParameter("mail");
		JDBC j=new JDBC();
		String sql="update `customer` set `cs_password`='"+pswd+"' where `cs_email`='"+email+"'";	
		System.out.println(sql);
		j.executeUpdate(sql);
		String sql2="update `admin` set `a_password`='"+pswd+"' where `a_email`='"+email+"'";	
		j.executeUpdate(sql2);
		response.sendRedirect("forgot_password.jsp?update=true");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
