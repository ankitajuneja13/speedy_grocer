

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class confirmupdate
 */
@WebServlet("/confirmupdate")
public class confirmupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirmupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Update confirm");
		String name=request.getParameter("cate");
		int i = Integer.parseInt(request.getParameter("st"));
		int c = Integer.parseInt(request.getParameter("catId"));
		JDBC j = new JDBC();
		String sq ="update category set c_name='"+name+"',status="+i+" where c_id="+c;
		j.executeUpdate(sq);
		JDBC.closeResource();
		response.sendRedirect("Admin/category.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
