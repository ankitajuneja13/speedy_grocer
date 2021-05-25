
<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String c=request.getParameter("cat_id");
JDBC j=new JDBC();
String sql = "select * from category where c_id="+c;
ResultSet r=j. executeQuery(sql);
	      
	      while (r.next()){%>
	      <li><i class="fa fa-home" aria-hidden="true"></i><a href="index.jsp">Home</a><span>|</span></li>
				<li><%=r.getString(2)%></li>
	      <%} JDBC.closeResource();
%>