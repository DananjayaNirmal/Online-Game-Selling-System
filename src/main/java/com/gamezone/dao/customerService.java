package com.gamezone.dao;
import java.awt.Taskbar.State;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.gamezone.model.CustomerModel;
import com.gamezone.util.DBConnection;

import com.gamezone.util.*;
import cart.gameModel;


public class customerService {

	
//insert the data
public void customerService(CustomerModel cus) {   //model class object as parameter
		
	try {
		
		String query  = "insert into customerdetails(userName,email,dob,age,gender,currentPassword,role) values('"+cus.getUserName()+"','"+cus.getEmail()+"','"+cus.getDob()+"','"+cus.getAge()+"','"+cus.getGender()+"','"+cus.getCurrentPassword()+"','"+cus.getType()+"')";
		
		System.out.println("Executing query: " + query);
		
		Statement statement = DBConnection.getConnection().createStatement();
		//Statement statement = DBconnection.getConnection().createStatement();  //connect with database
		statement.executeUpdate(query);    //execute the query variable
		
		
	}catch (Exception e1) {
		e1.printStackTrace();
		
		 System.out.println("DB Error!");
	        e1.printStackTrace(); // Shows what exactly went wrong
	}
		
	}


//validate password
public boolean validate(CustomerModel cus) {
	
	try {
		
		String query = "select * from customerdetails where email = '"+cus.getEmail()+"' and currentPassword = '"+cus.getCurrentPassword()+"'";
	
		Statement statement = DBConnection.getConnection().createStatement();
		ResultSet rs = statement.executeQuery(query);
		if(rs.next())
		{
			return true;
		}
		
	} catch (Exception e) {
		e.fillInStackTrace();
	}
	
	return false;   //for true value
}
 
//Update details

public void updateCustomer(CustomerModel cus) {
	
	try {
		
		//String query = "update customerdetails SET username ='"+cus.getUserName()+"', email='"+cus.getEmail()+"', dob='"+cus.getDob()+"', age='"+cus.getAge()+"', gender='"+cus.getGender()+"', currentPassword='"+cus.getCurrentPassword()+"' WHERE email='"+cus.getEmail()+"'";
		String query = "UPDATE customerdetails SET " +
	            "userName = '" + cus.getUserName() + "', " +
	            "dob = '" + cus.getDob() + "', " +
	            "age = '" + cus.getAge() + "', " +
	            "gender = '" + cus.getGender() + "' " +
	            "WHERE email = '" + cus.getEmail() + "'";
		
		
		Statement statement = DBConnection.getConnection().createStatement();	
		statement.executeUpdate(query);
		
	} catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
	
	
}


public void updatePassword(CustomerModel cus) {
	
	try {
		
		String query = "UPDATE customerdetails SET " +
	            "currentPassword = '" + cus.getNewPassword() + "', " +
	            "WHERE email = '" + cus.getEmail() + "'";
		
		//String query = " UPDATE customerdetails SET currentPassword ='"+cus.getNewPassword()+"' WHERE email='"+cus.getEmail()+"'";
		Statement statement = DBConnection.getConnection().createStatement();   
        statement.executeUpdate(query);
		
		//Statement statement = DBconnection.getConnection().createStatement();	
		//statement.executeUpdate(query);
		
	} catch (Exception e) {
		
		e.printStackTrace();
		
	}

}

//getby id
public CustomerModel getOne(CustomerModel cus) {
    CustomerModel fullCus = null;

    try {
        String query = "SELECT * FROM customerdetails WHERE email = '" + cus.getEmail() + "' AND currentPassword = '" + cus.getCurrentPassword() + "'";
        Statement statement = DBConnection.getConnection().createStatement();
        ResultSet rs = statement.executeQuery(query);

        if (rs.next()) {
            fullCus = new CustomerModel();
            fullCus.setUserName(rs.getString("userName"));
            fullCus.setEmail(rs.getString("email"));
            fullCus.setDob(rs.getString("dob"));
            fullCus.setAge(rs.getInt("age"));
            
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return fullCus;
}






/*
public CustomerModel getCustomerDetails(String email) {
    CustomerModel cus = null;

    try {
        String query = "SELECT * FROM customerdetails WHERE email = '" + email + "'";
        Statement statement = DBconnection.getConnection().createStatement();
        ResultSet rs = statement.executeQuery(query);

        if (rs.next()) {
            cus = new CustomerModel();
            cus.setUserName(rs.getString("userName"));
            cus.setEmail(rs.getString("email"));
            cus.setDob(rs.getString("dob"));
            cus.setAge(rs.getInt("age"));
            cus.setGender(rs.getString("gender"));
            cus.setType(rs.getBoolean("type"));  // use getString() if stored as string
            // Add more fields if needed
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return cus;
}



//display details
public CustomerModel showindash(CustomerModel cus) {
	
	try {
		
		String query = "select * from customerdetails where email = '"+cus.getEmail()+"' and currentPassword = '"+cus.getCurrentPassword()+"'";
	
		Statement statement = DBconnection.getConnection().createStatement();
		ResultSet rs = statement.executeQuery(query);
		if(rs.next())
		{
			cus.setUserName(rs.getString("userName"));
			cus.setType(rs.getBoolean("type"));
			cus.setEmail(rs.getString("email"));
			
			return cus;
		}
		
	} catch (Exception e) {
		e.fillInStackTrace();
	}
	
	return null;   //for true value
}


public CustomerModel getOne(CustomerModel cus) {
	// TODO Auto-generated method stub
	return null;
}




//getby ID
public static  List<CustomerModel> getByid (String id){
	
	int convertID = Integer.parseInt(id);
	
	ArrayList <CustomerModel> cus = new ArrayList<>();
	
	try {
		
		//DBconnection
		con = DBconnection.getConnection();
		statement = con.createStatment
		
		
	} catch (Exception e) {
		
	}
	
}*/



}
