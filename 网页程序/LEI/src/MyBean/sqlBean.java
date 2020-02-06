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
	            System.out.println("���ݿ�����ʧ��!!!"+e.getMessage());  
	        }  
	        return stmt;  
	    }  
	      
	    /** 
	     * ִ��sql�������ݿ��ѯ 
	     * @param sql 
	     * @return 
	     */  
	    public ResultSet executeQuery(String sql){  
	        ResultSet rs=null;  
	        try {  
	            rs=getStatement().executeQuery(sql);  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	            System.out.println("���ݿ��ѯʧ��!!!"+e.getMessage());  
	        }  
	        return rs;  
	    }  
	      
	    /** 
	     * ִ��sql�������ݿ���� 
	     */  
	    public int executeUpdate(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("ִ�и��´���!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	    /**
	     * ִ��sql�������ݿ���� 
	     */  
	    public int executeInsert(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("ִ�в������!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	  
	    /** 
	     * ִ��sql�������ݿ�ɾ��
	     */  
	    public int executeDelete(String sql){  
	        int i=0;  
	        try {  
	            i=getStatement().executeUpdate(sql);  
	        } catch (SQLException e) {
	            e.printStackTrace();  
	            System.out.println("ִ��ɾ������!!!"+e.getMessage());  
	        }  
	        return i;  
	    }  
	    /** 
	     * �ر����ݿ�
	     */  
	    
	    public void closeDB() {
	    	try{
	    		con.close();
	    	} catch (SQLException e) {
	    		System.out.println("���ݿ�رմ���!!!"+e.getMessage());  
	    	}
	    	
	    }
}



