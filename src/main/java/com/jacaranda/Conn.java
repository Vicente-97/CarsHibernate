package com.jacaranda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
	
	private static Connection conn = null;
	
	//método para realizar la conexión con base de datos
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		
		if (conn == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/concesionario?useSSL=false", "toor", "toor");
		}
		return conn;
	}
	
}
