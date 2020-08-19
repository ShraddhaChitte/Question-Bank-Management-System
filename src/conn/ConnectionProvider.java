package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getConnection()
	{
		
		Connection con=null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","Dhannirankarjii7#");
			return con;
			
		} catch (Exception e) {
			
		}
		return con;
		
	}
}

