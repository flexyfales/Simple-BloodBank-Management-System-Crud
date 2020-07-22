package Project;
import java.sql.*;
public class DbConnection {

	public static Connection getCon() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bloodbank","root","");
			return conn;
		
	}catch(Exception e) {
		System.out.println(e);
		return null;
	}

	}
}
