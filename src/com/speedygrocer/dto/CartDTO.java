package com.speedygrocer.dto;

import java.util.ArrayList;

public class CartDTO {
	public ArrayList<ProductDTO> plist = new ArrayList<ProductDTO>();
	public void addProduct(ProductDTO p)
	{
		plist.add(p);
	}
	public void removeProduct(int id)
	{
		for(int i=0 ; i<plist.size();i++)
		{
		
			if(plist.get(i).getPid()==id)
			{
				plist.remove(i);
				return;
			}
		}
	}
}
