

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.speedygrocer.db.JDBC;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JDBC j=new JDBC();
		String s= getServletContext().getRealPath("pimages");
        MultipartRequest m=new MultipartRequest(request,s);  
        System.out.print("successfully uploaded"); 
        String prod=m.getParameter("product");
		String pcost=m.getParameter("price");
		String pdescription =m.getParameter("detail");
		String stock =m.getParameter("pqty");
		int catg=Integer.parseInt(m.getParameter("category"));
		int un=Integer.parseInt(m.getParameter("unit"));
		String o= m.getParameter("offer");
		System.out.println("offer"+o);
		String sql = "insert into product (p_name,cost,description,qty,c_id,u_id,p_offer) values('"+prod+"','"+pcost+"','"+pdescription+"','"+stock+"',"+catg+","+un+","+o+")";
	     System.out.println(sql);
		j.executeUpdate(sql);
	      System.out.println("inserted");
	      response.sendRedirect("Admin/product.jsp");
		

	}

}
