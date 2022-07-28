package com.cn.db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
     private Connection con=null;
     

     public DataBaseConnection() throws Exception{
    	 String driver ="com.mysql.jdbc.Driver";
    	 String url = "jdbc:mysql://localhost:3306/onlinebbs";
    	  String user="root";
    	  String password="139133";
        Class.forName(driver);
        con=DriverManager.getConnection(url, user, password);
     }
     

     public Connection getConnection() {
    	 return this.con;
     }
     
 
     public void close() {
    	 if(this.con!=null) {
    		 try {
				this.con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	 }
     }
}

