
package com.speedygrocer.dao;
import java.sql.*;

import com.speedygrocer.db.*;
import com.speedygrocer.dto.CategoryDTO;
public class CategoryDAO 
{
	JDBC j = new JDBC();
	
	public CategoryDAO() {
		super();
		System.out.println("object created cate dao");
	}

	public boolean delete(int a)
	{
		String sql="delete from category where c_id="+a;
		j.executeUpdate(sql);
		return true;
	}
	public CategoryDTO update(int a)
	{
		String name=null;
		int c=0;
		String sql = "Select c_name,status from category where c_id="+a;
		System.out.println(sql);
		try {
		ResultSet r = j.executeQuery(sql);
		if(r.next())
			{name = r.getString(1);
			System.out.println(name);
			c = r.getInt(2); 
			System.out.println(c);
		}} catch (SQLException e) {
			// TODO Auto-generated catch blo
			e.printStackTrace();
		}
		CategoryDTO cdto = new CategoryDTO();
		cdto.setCname(name);
		cdto.setCstatus(c);
		cdto.setCid(a);
		return cdto;
				
	}
}
