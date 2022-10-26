package com.jacaranda;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class UtilsUsers {

	// Obtiene un usuario en concreto partiendo del parametro name.
	public static User getUser(String name ) {
		Session session = Conn.getSession();
			
		User user = (User) session.get(User.class,name);
		return user;
		
	}
	
	// Obtiene una lista con los usuarios
	public static ArrayList<User> getUsers(){
		Session session = Conn.getSession();
		
		Query<User> query = session.createQuery("SELECT p FROM com.jacaranda.User p");
		ArrayList<User> users = (ArrayList<User>) query.getResultList();
		
		return users;
	}
	
	  //Comprueba si el usuario es valido en nuestra base de datos.
	public static boolean userIsValid(String name, String pass) {
	    boolean valid = false;
		try {
		    Session session = Conn.getSession();
		    Query<User> query = session.createQuery("SELECT p FROM com.jacaranda.User p WHERE name='" + name + "'and pass='"+pass+"'",User.class);
		    if(!query.getResultList().isEmpty()) {
		        valid = true;
		    
		    }
		}catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		return valid;
	}
	

}
