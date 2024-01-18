package com.payment;


import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//This class contains utility methods for database operations related to user payments
public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	// Method to validate user details by name and email
	public static  List<User> validate(String name, String email) {
		
           ArrayList<User> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where name='"+name+"' and email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String email1 = rs.getString(3);
				String phone = rs.getString(4);
				String section = rs.getString(5);
				String method = rs.getString(6);
				String amount = rs.getString(7);
				
				User c = new User(id,name1,email1,phone,section,method,amount);
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
	// Method to insert customer details into the database
    public static boolean insertcustomer(String name, String email, String phone,String section,String method,String amount) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into payment values (0,'"+name+"','"+email+"','"+phone+"','"+section+"','"+method+"','"+amount+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	} 
 	
    	return isSuccess;
    }
    
 // Method to update customer details in the database
    public static boolean updatecustomer(String id, String name, String email, String phone,String section,String method,String amount) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update payment set name='"+name+"',email='"+email+"',phone='"+phone+"',section='"+section+"',method='"+method+"',amount='"+amount+"' "
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    // Method to retrieve customer details from the database
    public static List<User> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from payment where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name1 = rs.getString(2);
				String email1 = rs.getString(3);
				String phone = rs.getString(4);
				String section = rs.getString(5);
				String method = rs.getString(6);
				String amount = rs.getString(7);
    			
    			User c = new User(id,name1,email1,phone,section,method,amount);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
 // Method to delete a customer from the database
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from payment where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
