

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String user=request.getParameter("Username");
		String pwd=request.getParameter("Password");
		String id=request.getParameter("Email");
		String con=request.getParameter("Phone");
		String add=request.getParameter("Addr");
		JDBC j=new JDBC();
		String sql = "insert into customer (cs_name,cs_contact,cs_email,cs_address,cs_password ) values('"+user+"','"+con+"','"+id+"','"+add+"','"+pwd+"')";
		j.executeUpdate(sql);
		String sq = "insert into admin (a_email,a_password,role,a_status,a_name ) values('"+id+"','"+pwd+"','customer','1','"+user+"')";
		j.executeUpdate(sq);
        JDBC.closeResource();
        response.sendRedirect("login.jsp");
}

		// TODO Auto-generated method stub
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}}
