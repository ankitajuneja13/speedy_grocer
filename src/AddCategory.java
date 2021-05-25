import com.speedygrocer.db.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;  

/**
 * Servlet implementation class AddCategory
 */
@WebServlet("/AddCategory")
public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String catg=request.getParameter("cate");
		
			      
			     // JDBC.closeResource();MultipartRequest m=new MultipartRequest(request,"C:/Users/htc/Desktop/kimages");  
		            // System.out.print("successfully uploaded"); 
	              
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	             
		        JDBC j=new JDBC();
	     
	              String s= getServletContext().getRealPath("pimages");
	             MultipartRequest m=new MultipartRequest(request,s);  
	             System.out.print("successfully uploaded");  
	             String catg=m.getParameter("cate");
	             String sql = "insert into category (c_name,status) values('"+catg+"',1)";
	             j.executeUpdate(sql);
			      System.out.println(sql);
			      response.sendRedirect("Admin/category.jsp");
			      JDBC.closeResource();
	    
	}

}
