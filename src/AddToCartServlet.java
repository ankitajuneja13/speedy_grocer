

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.sql.ResultSet;

import com.mysql.jdbc.*;
import com.speedygrocer.db.*;
import com.speedygrocer.dto.CartDTO;
import com.speedygrocer.dto.ProductDTO;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int prid=Integer.parseInt(request.getParameter("p_id"));
		String ac = request.getParameter("action");
		if(ac.equals("add"))
		{
		JDBC j=new JDBC();
		String sql="Select * from product where p_id="+prid;
	    ResultSet rs=j.executeQuery(sql);
			try {
				while(rs.next()){
				    float offer=rs.getFloat(8);

				ProductDTO p=new ProductDTO();
				
					p.setPid(rs.getInt(1));
					p.setPname(rs.getString(3));
					if(offer==0){
					p.setPcost(rs.getInt(4));
					}
					else
					{
						int p1=rs.getInt(4);
						float o=rs.getFloat(8);
						float d=p1*o;
						int cost=(int) (p1-d);
						p.setPcost(cost);
					}
				HttpSession s=request.getSession();
				CartDTO a=(CartDTO)s.getAttribute("cart");
				
				if(a==null)
				{
					CartDTO c=new CartDTO();
					c.addProduct(p);
					s.setAttribute("cart", c);
				}
				else
				{
					a.addProduct(p);
					s.setAttribute("cart",a);
				}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
			else
			{   HttpSession s=request.getSession();
				CartDTO a=(CartDTO)s.getAttribute("cart");
									a.removeProduct(prid);
					s.setAttribute("cart",a);
					response.sendRedirect("cart1.jsp");
				
			}
		}
	    
	   // response.sendRedirect("cart.jsp");
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
