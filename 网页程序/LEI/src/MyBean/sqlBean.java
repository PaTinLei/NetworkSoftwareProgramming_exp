package MyBean;

import java.util.*;
import java.sql.*;

public class sqlBean {
	 private Connection con = null;
	 public Statement getStatement(){  
	        Statement stmt=null;  
	       // Connection con=null;  
	        try {  
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();  
 con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;" + "databaseName=test1;user=sa;password=sa;");  
stmt=con.createStatement();  
	        } catch (InstantiationException e) {  
	            e.printStackTrace();  
	        } catch (IllegalAccessException e) { 
	            e.printStackTrace();  
	        } catch (ClassNotFoundException e) { 
	            e.printStackTrace();  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        }catch(Exception e){  
	            System.out.println("数据库连接失败!!!"+e.getMessage());  
	        }  
	        return stmt;  
	    }  
	      
	    /** 
	     * 执行sql语句的数据库查询 
	     * @param sql 
	     * @return 
	     */  
	    public ResultSet executeQuery(String sql){  
	        ResultSet rs=null;  
	        try {  
	            rs=getStatement().executeQuery(sql);  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	            System.out.println("数据库查询失败!!!"+e.getMessage());  
	        }  
	        return rs;  
	    }  
	      
	    /** 
	     * 执行sql语句的数据库更新 
	     */  
	    public int executeUpdate(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("执行更新错误!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	    /**
	     * 执行sql语句的数据库插入 
	     */  
	    public int executeInsert(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("执行插入错误!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	  
	    /** 
	     * 执行sql语句的数据库删除
	     */  
	    public int executeDelete(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("执行删除错误!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	    /** 
	     * 关闭数据库
	     */  
	    
	    public void closeDB() {
	    	try{
	    		con.close();
	    	} catch (SQLException e) {
	    		System.out.println("数据库关闭错误!!!"+e.getMessage());  
	    	}
	    	
	    }
}



