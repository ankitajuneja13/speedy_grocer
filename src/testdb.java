import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testdb
 */
@WebServlet("/testdb")
public class testdb extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/online_shopping";
	   static final String USER = "root";
	   static final String PASS = "";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public testdb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection conn = null;
		   Statement stmt = null;
		try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		     // System.out.println("Connecting to a selected database...");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		    //  PrintWriter a= response.getWriter();
		    //  a.println("connected");
		     // System.out.println("Connected database successfully...");
		      
		      //STEP 4: Execute a query
		      //System.out.println("Inserting records into the table...");
		      stmt = conn.createStatement();
		      
		      String sql = "INSERT INTO unit VALUES (1,'ml')";
		      stmt.executeUpdate(sql);
		      
		      //System.out.println("Inserted records into the table...");
		      PrintWriter a= response.getWriter();
			   a.println("inserted");

		   }
		catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
