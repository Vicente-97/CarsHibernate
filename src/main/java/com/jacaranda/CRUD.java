package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;



public class CRUD {
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	
	public CRUD() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
		
	}
	
	public void pruebaInsert(Car c) {
		session.getTransaction().begin();
		session.save(c);
		session.getTransaction().commit();
	}
	
	public void pruebaUpdate(Car c) {
		session.getTransaction().begin();
		session.update(c);
		session.getTransaction().commit();
	}
	
	public void pruebaDelete(Car c) {
		session.getTransaction().begin();
		session.delete(c);
		session.getTransaction().commit();
	}
	

}
