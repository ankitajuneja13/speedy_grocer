

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.speedygrocer.dao.*;
import com.speedygrocer.dto.CategoryDTO;

/**
 * Servlet implementation class CategoryServelet
 */
@WebServlet("/CategoryServelet")
public class CategoryServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("called");
		// TODO Auto-generated method stub
		CategoryDAO d=new CategoryDAO();
		int id=Integer.parseInt(request.getParameter("Cat_id"));	
		String ac=request.getParameter("action");	
		if(ac.equals("delete"))
		{
			boolean flag=d.delete(id);
			if(flag)
			{
				response.sendRedirect("Admin/category.jsp");
				
			}
		}
		else  if(ac.equals("update"))
		{	System.out.println("hii");
		CategoryDTO dto=  d.update(id);
	      HttpSession s = request.getSession();
	      s.setAttribute("catdto",dto );
	      
	      response.sendRedirect("Admin/categoryupdateform.jsp");
	}
		
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
