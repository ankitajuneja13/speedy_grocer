

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;
import com.speedygrocer.mail.Mail;

/**
 * Servlet implementation class Message
 */
@WebServlet("/Message")
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Message() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("Name");
		String mail=request.getParameter("Email");
		String phone=request.getParameter("Telephone");
		String sub=request.getParameter("Subject");
		String msg=request.getParameter("Message");
		JDBC j=new JDBC();
		String sql="insert into customer_message (name,messege,date,email,contact,status,subject) values('"+name+"','"+msg+"',curdate(),'"+mail+"','"+phone+"',1,'"+sub+"')";
		j.executeUpdate(sql);
		String sub1="reply";
		String msg1="Your message is recived!!!";
		String from="mohit.gupta30000@gmail.com";
		String pwd="9529929045";
		Mail.send(from, pwd, mail, sub1, msg1);
		response.sendRedirect("mail.jsp?attempt=true");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
