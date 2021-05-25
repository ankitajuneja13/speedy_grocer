

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class order_request
 */
@WebServlet("/order_request")
public class order_request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public order_request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int b_id=Integer.parseInt(request.getParameter("boy_id"));
		int or_id=Integer.parseInt(request.getParameter("order_id"));
		JDBC j=new JDBC();
		String sql="update `order` set o_status=2,a_id="+b_id+ " where o_id="+or_id;
		j.executeUpdate(sql);
		System.out.println(sql);
		response.sendRedirect("Admin/todayorder.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
