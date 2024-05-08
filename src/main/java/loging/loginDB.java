package loging;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;









public class loginDB {
	
	
	
	
	public static Connection conn = null;
	public static Statement stmnt = null;
	public static ResultSet a = null;
	public static boolean issuccess;
	
	
	
	
	
	
	
	public static boolean register(String name,String email,String mobile,String password ) {
		
		issuccess = false;
		
		try {
			
			conn =DBconnector.getConnection() ;
			stmnt =conn.createStatement() ;
			 
			
			if(loginDB.compare(email)) {
				
				issuccess = false;
			}else {
	
			String sql = "insert into register values(0,'"+name+"' ,'"+email+"' ,'"+password+"','"+mobile+"')" ;
			int a = stmnt.executeUpdate(sql);
			
			if(a > 0) {
				
				issuccess = true;
				
			}else {
				
				issuccess = false;
			}
			
		}
	}
		catch(Exception e){
			 
			 e.printStackTrace(); 
		 }
		
		
		return issuccess;
	}
	
	public static boolean compare(String email) {
		
		
		try {
			 
			 
			conn = DBconnector.getConnection() ;
			 stmnt = conn.createStatement() ;
			String sql ="select  * from register where email ='"+email+"'";
			  a = stmnt.executeQuery(sql);
			
			  	return a.next() ;
		 }
		
		 catch(Exception e){
			 
			 e.printStackTrace(); 
				return false ;
		 }
		
		
		
	}
	
	
	public static boolean login(String email,String password ) {
		
		try {
			 
			 
			conn = DBconnector.getConnection() ;
			 stmnt = conn.createStatement() ;
			String sql ="select * from register where email='"+email+"' and password='"+password+"' ";
			 a = stmnt.executeQuery(sql) ;
			
			if(a.next()) {
				issuccess = true ;
			}else {
				issuccess = false ;
			}
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace(); 
		 }
		
		
		
		return issuccess;
	}
	
	
	
	public static List<Register> Account(String uemail,String upassword){
		
		ArrayList<Register> acc = new ArrayList<>() ;
		
		try {
			 
			 
			conn = DBconnector.getConnection() ;
			 stmnt = conn.createStatement() ;
			String sql ="select * from register where email='"+uemail+"' and password='"+upassword+"'";
			 a = stmnt.executeQuery(sql) ;
			
			while(a.next()) {
				
				int id =a.getInt(1) ;
				String name = a.getString(2) ;
				String email = a.getString(3) ;
				String password = a.getString(4) ;
				String mobile = a.getString(5) ;
			
				
				Register r = new Register(id,name,email,password,mobile );
				
				if(r != null) {
					acc.add(r) ;
					
				}
			}
		 }
		 
		 catch(Exception e){
			
			 
		 }
		return acc ;
	}
	
	
	
	
	
	public static boolean mylog(String email ) {
		
		try {
			 
			 
			conn = DBconnector.getConnection() ;
			 stmnt = conn.createStatement() ;
			String sql ="select * from register where email='"+email+"' ";
			 a = stmnt.executeQuery(sql) ;
			
			if(a.next()) {
				issuccess = true ;
			}else {
				issuccess = false ;
			}
		 }
		 
		 catch(Exception e){
			 
			 e.printStackTrace(); 
		 }
		
		
		
		return issuccess;
	}
	
	
public static List<Register> My(String uemail){
		
		ArrayList<Register> acc = new ArrayList<>() ;
		
		try {
			 
			 
			conn = DBconnector.getConnection() ;
			 stmnt = conn.createStatement() ;
			String sql ="select * from register where email='"+uemail+"' ";
			 a = stmnt.executeQuery(sql) ;
			
			while(a.next()) {
				
				
				int id =a.getInt(1) ;
				String name = a.getString(2) ;
				String email = a.getString(3) ;
				String password = a.getString(4) ;
				String mobile = a.getString(5) ;
			
				
				Register r = new Register(id,name,email,password,mobile );
				
				if(r != null) {
					acc.add(r) ;
					
				}
			}
		 }
		 
		 catch(Exception e){
			
			 
		 }
		return acc ;
	}
public static boolean update(String name,String email,String mobile ) {
	
	issuccess = false;
	
	try {
		
		conn =DBconnector.getConnection() ;
		stmnt =conn.createStatement() ;
		 
		String sql = "update  register set name='"+name+"',email='"+email+"',mobile='"+mobile+"'" 
		+ "where email='"+email+"'";
		int  a = stmnt.executeUpdate(sql) ;
		 
			if(a > 0) {
				issuccess = true ;
			}else {
				issuccess = false ;
			}
}
	catch(Exception e){
		 
		 e.printStackTrace(); 
	 }
	
	
	return issuccess;
}


public static boolean updatepassword(String email ,String password ) {
	
	issuccess = false;
	
	try {
		
		conn =DBconnector.getConnection() ;
		stmnt =conn.createStatement() ;
		 
		String sql = "update  register set email='"+email+"',password='"+password+"'" 
		+ "where email='"+email+"'";
		int  a = stmnt.executeUpdate(sql) ;
		
			if(a > 0) {
				issuccess = true ;
			}else {
				issuccess = false ;
			}
}
	catch(Exception e){
		 
		 e.printStackTrace(); 
	 }
	
	
	return issuccess;
}

public static List<Register>list(){
	
	ArrayList<Register> li = new ArrayList<>() ;
	
	try {
		 
		 
		conn = DBconnector.getConnection() ;
		 stmnt = conn.createStatement() ;
		String sql ="select * from register ";
		 a = stmnt.executeQuery(sql) ;
		
		while(a.next()) {
			
			
			int id =a.getInt(1) ;
			String name = a.getString(2) ;
			String email = a.getString(3) ;
			String password = a.getString(4) ;
			String mobile = a.getString(5) ;
		
			
			Register r = new Register(id,name,email,password,mobile );
			
			if(r != null) {
				li.add(r) ;
				
			}
		}
	 }
	 
	 catch(Exception e){
		
		 
	 }
	
	
	
	return li ;
	
}
public static boolean delete(String id) {
	
	int id_converter=Integer.parseInt(id) ;
	
	try { 
		conn = DBconnector.getConnection() ;
		 stmnt = conn.createStatement() ;
		String sql ="delete from register where id='"+id_converter+"' " ;
				
		int a = stmnt.executeUpdate(sql) ;
		
		if(a > 0) {
			issuccess = true ;
		}else {
			issuccess = false ;
		}
	 }
	 
	 catch(Exception e){
		 
		 e.printStackTrace(); 
	 }
		
		return issuccess ;
	
	
	}

	
	
	

}

