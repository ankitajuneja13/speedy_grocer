

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class order_dispatch
 */
@WebServlet("/order_dispatch")
public class order_dispatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public order_dispatch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int b_id=Integer.parseInt(request.getParameter("delivery_id"));
		int or_id=Integer.parseInt(request.getParameter("order_id"));
		int c_id=Integer.parseInt(request.getParameter("customer_id"));
		JDBC j=new JDBC();
		String sql="update `order` set o_status=3,a_id="+b_id+ " where o_id="+or_id;
		j.executeUpdate(sql);
		System.out.println(sql);
		response.sendRedirect("Admin/orderdispatch.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
