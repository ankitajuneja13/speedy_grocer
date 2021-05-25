

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession s=request.getSession();
		 int c_id=(Integer) s.getAttribute("id");
		 String pswd=(String) s.getAttribute("pwd");
		 System.out.println("hii "+c_id);
		String n=request.getParameter("Username");
		String e=request.getParameter("Email");
		String a=request.getParameter("Addr");
		String p=request.getParameter("Phone");
		JDBC j = new JDBC();
		String sq ="update `customer` set cs_name='"+n+"',cs_email='"+e+"',cs_contact="+p+",cs_address='"+a+"' where cs_id="+c_id;
		j.executeUpdate(sq);
		String sql ="update `admin` set a_name='"+n+"',a_email='"+e+"' where a_password='"+pswd+"'";
		System.out.println("sql "+sql);
		j.executeUpdate(sql);
		response.sendRedirect("profile.jsp?update=true");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
