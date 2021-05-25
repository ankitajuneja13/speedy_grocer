

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.speedygrocer.db.JDBC;
import com.speedygrocer.dto.*;
import com.speedygrocer.mail.*;
/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String date=java.time.LocalDate.now(); 
		int oidd=0;
		HttpSession s=request.getSession();
		String to="";
		
		String from="mohit.gupta30000@gmail.com";
		String pwd="9529929045";
		String sub="Your order detail";
		String msg="<b>your order is sucessfully placed</b><br>";
		msg += "Your order :<br>";
		if(s.getAttribute("id")==null )
		{
		 
		 response.sendRedirect("login.jsp");
		 }
		 else{
			 int i=(int) s.getAttribute("id");
			 System.out.println("id"+i);
			 to=(String) s.getAttribute("user");
			 System.out.println("to "+to);
		CartDTO cdto=(CartDTO)s.getAttribute("cart");
		int sum=0;
		for(ProductDTO p: cdto.plist)
		{
			sum=sum+p.getPcost();
			
		}
		float tax=(float) (sum*0.12);
		float grand=tax+sum;
		ResultSet rs=null;
		JDBC j1=new JDBC();
		String sql="INSERT INTO `online_shopping`.`order` (`cs_id`, `o_date`, `o_total`, `o_tax`, `o_gt`, `o_status`, `a_id`) VALUES ('"+i+"', curdate(), '"+sum+"', '"+tax+"', '"+grand+"', '1', '0')";
		j1.executeUpdate(sql);
		String sql1="select max(o_id) from `order` where cs_id="+i;
		System.out.println(sql1);
		rs= j1.executeQuery(sql1);
		try {
			while(rs.next())
			{
			
				 oidd=rs.getInt(1);
			} }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 msg +="order id : "+oidd+"<br>";
		for(ProductDTO p: cdto.plist)
		{
			int pid=p.getPid();
			int cost=p.getPcost();
			JDBC j=new JDBC(); 
			String sql2="insert into `online_shopping`.`order_detail` (o_id,p_id,qty,price) values ("+oidd+","+pid+",1,"+cost+")";
			j.executeUpdate(sql2);
			
		}
		for(ProductDTO p: cdto.plist)
		{
			msg += p.getPname()+"<br>";
		}
		msg += "Total Amount : "+grand ;
		System.out.println("msg "+msg);
		for(ProductDTO p: cdto.plist)
		{
			int pid=p.getPid();
			JDBC j6=new JDBC();
			String sql6="UPDATE `product` SET `qty`=`qty`-1 WHERE `p_id`="+pid;
			j6.executeUpdate(sql6);
		}
		Mail.send(from,pwd,to,sub,msg);
		s.setAttribute("cart",null);
		response.sendRedirect("index.jsp?status=placed");
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
