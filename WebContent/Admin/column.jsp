<%@ page language="java" import="java.util.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! 
private static final long serialVersionUID = 1L;
static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/online_shopping";
	   static final String USER = "root";
	   static final String PASS = "";%>
<div class="xs tabls" id="table-div">
						<!-- /.table-responsive -->
						<div class="table-responsive">
						  <table class="table table-bordered">
							<thead>
							  <tr>
								<th>Id</th>
								<th>Category</th>
								<th>Status</th>
								<th>Delete</th>
								<th>Update</th>
							  </tr>
							</thead>
							<tbody>
<% Connection conn = null;
Statement stmt = null;
try{
	   Class.forName("com.mysql.jdbc.Driver");
	   System.out.println("driver loaded");
	      conn = DriverManager.getConnection(DB_URL, USER, PASS);
	      System.out.println("hello");
	      stmt = conn.createStatement();
	      String sql = "select * from category";
	      ResultSet rs= stmt.executeQuery(sql);
	      
	      while (rs.next()){%>

							  <tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getInt(3) %></td>
								<td><button><a href="../CategoryServelet?Cat_id=<%=rs.getInt(1)%>&action=delete"  data-text="Delete"><span style="color:red">delete</span></a></button></td>
							    <td><button><a href="../CategoryServelet?Cat_id=<%=rs.getInt(1)%>&action=update" data-text="update"><span style="color:red">Update</span></a></button></td>
							  </tr>

<%}
}catch(SQLException se){
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
 }
%>



							</tbody>
						  </table>
						</div><!-- /.table-responsive -->
						</div>