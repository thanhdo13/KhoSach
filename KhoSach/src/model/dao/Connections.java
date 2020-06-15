package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connections {
	public Connection cn;
	public void KetNoi()  {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String dbURL;
			String dbServerIP = "DESKTOP-98SDSJ4\\SQLEXPRESS:1433";
			String dbUsername = "sa";
			String dbPassword = "123";
			String dbName = "khosach";
			dbURL = String.format("jdbc:sqlserver://%s;user=%s;password=%s;databaseName=%s", dbServerIP, dbUsername,
					dbPassword, dbName);
			cn = DriverManager.getConnection(dbURL);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
