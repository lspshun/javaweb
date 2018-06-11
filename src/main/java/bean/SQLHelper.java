package bean;
import java.sql.*;            //引入sql相关包
public class SQLHelper {
	private String driverStr = "com.mysql.jdbc.Driver";
	private String connStr = "jdbc:mysql://localhost:3306/yStudent?characterEncoding=utf8";
	private String dbusername = "root";
	private String dbpassword = "123";
	private Connection conn = null;
	private Statement stmt = null;

	public SQLHelper() {
		try {
			Class.forName(driverStr);
			conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
			stmt = conn.createStatement();
		} catch (Exception ex) {
			System.out.println("exception in SQLHelper");
		}
	}

	public int executeUpdate(String sql) {
		int result = 0;
		try {
			result = stmt.executeUpdate(sql);
		} catch (Exception ex) {
			System.out.println("Exception in executeUpdate");
		}
		return result;
	}

	public ResultSet executeQuery(String sql) {
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery(sql);
			if(!rs.next()) return null;
			rs.previous();
		} catch (Exception ex) {
			System.out.println("Exception in executeQuery");
		}
		return rs;
	}

	public void close() {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
		}
	}
}