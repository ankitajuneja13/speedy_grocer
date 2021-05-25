

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.speedygrocer.db.JDBC;
import com.speedygrocer.mail.Mail;

/**
 * Servlet implementation class loginto
 */
@WebServlet("/loginto")
public class loginto extends HttpServlet {
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{   PrintWriter o = response.getWriter();
		String user=request.getParameter("Username");
		String pwd=request.getParameter("Password");
		String s1=request.getParameter("login");
		System.out.println("s "+s1);
		String name=null;
		String role="";
		int id=0;
		int id1=0;
		int flag=0;
		JDBC j=new JDBC();
		 String sql = "select admin.a_name,admin.a_password,admin.role,admin.a_email,customer.cs_id,admin.a_id from admin left join customer on customer.cs_email=admin.a_email  where admin.a_email='"+user+"' and admin.a_password='"+pwd+"'";
		ResultSet rs= j.executeQuery(sql);
		try {
			
			while(rs.next())
			{
				flag=1;
				name=rs.getString(1);
			     id=rs.getInt(5);
			     System.out.println("myid"+id);
			     id1=rs.getInt(6);
			     role=rs.getString(3);
			}
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		if(s1.equals("Login"))
		{
		 	if(flag==1)
			 {
				  if(role.equals("customer"))
				 {
					 System.out.println("public");
					 o.print("Welcome "+user);
					 HttpSession s=request.getSession();
					 s.setAttribute("user",user);
					 s.setAttribute("name",name);
					 s.setAttribute("id",id);
					 s.setAttribute("pwd",pwd);
					 System.out.println("ftft"+s.getAttribute("id"));
					 response.sendRedirect("index.jsp");
				 }
				 else
				 {
					 System.out.println("admin");
					 o.print("Welcome "+user);
					 HttpSession s=request.getSession();
					 s.setAttribute("user",user);
					 s.setAttribute("name",name);
					 s.setAttribute("id1",id1);
					 System.out.println("log id"+s.getAttribute("id1"));
					 s.setAttribute("role",role);
					 s.setAttribute("pwd",pwd);
					 response.sendRedirect("Admin/index.jsp");
				 }
			 }
			else
			{System.out.println("fail");
					response.sendRedirect("login.jsp?loginattempt=fail");
			} }
		else
		{
			String from="mohit.gupta30000@gmail.com";
			String pwd1="9529929045";
			String sub="Link to change password";
			String msg="<p>Click the link below to change password :</p> <a href =http://localhost:8080/speedy_grocer/forgot_password.jsp?email="+user+">Change Password </a>";
			System.out.println("msg "+msg);
			Mail.send(from, pwd1, user, sub, msg);
			response.sendRedirect("login.jsp?loginattempt=send");
		}
		 
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
