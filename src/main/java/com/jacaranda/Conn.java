package com.jacaranda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Conn {
	
//	private static Connection conn = null;
	
	//método para realizar la conexión con base de datos
//	public static Connection getConnection() throws SQLException, ClassNotFoundException {
//		
//		if (conn == null) {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/concesionario?useSSL=false", "toor", "toor");
//		}
//		return conn;
//	}
	
	private static StandardServiceRegistry sr = new StandardServiceRegistryBuilder().configure().build();
	private static SessionFactory sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private static Session session = sf.openSession();
	
	public static Session getSession() {	
		return session;
	}
	
	
}
