

<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String p=request.getParameter("prod_id");
JDBC j=new JDBC();
String sql = "select * from product left join category on product.c_id=category.c_id where p_id="+p;
ResultSet r=j. executeQuery(sql);
	      
	      while (r.next()){%>
	      <li><i class="fa fa-home" aria-hidden="true"></i><a href="index.jsp">Home</a><span>|</span></li>
		<li><%=r.getString(10)%><span>|</span></li>		<li><%=r.getString(3)%></li>
	      <%} JDBC.closeResource();
%>