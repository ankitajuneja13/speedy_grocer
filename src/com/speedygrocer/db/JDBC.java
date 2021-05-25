package com.speedygrocer.db;

import java.sql.*;
public class JDBC
{
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/online_shopping";
	   static final String USER = "root";
	   static final String PASS = "";
	   static Connection conn;
	   static Statement stmt;
	   public ResultSet rs;
	   int a;
	   public JDBC()
	   {
			   try
			   {
				Class.forName("com.mysql.jdbc.Driver");
			 	conn = DriverManager.getConnection(DB_URL, USER, PASS);
			 	System.out.print("Database is connected !");
				stmt = conn.createStatement();
			}
			   catch (Exception e) {
				   System.out.print("Do not connect to DB - Error:"+e);
				 e.printStackTrace();
			}
	   }
	  public ResultSet executeQuery(String sql)
	   {
		  try {
			rs= stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	   }
	  public int executeUpdate(String sql)
	   {
		   try {
			 a=stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return a;
	   }
	 public static void closeResource()
	   {
		   try {
			conn.close();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   
		   
	   }
}
