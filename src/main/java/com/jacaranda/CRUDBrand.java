package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;



public class CRUDBrand {
		
	public static Brand getBrand(String name ) {
		Session session = Conn.getSession();
		Brand brand = (Brand) session.get(Brand.class,name);
		return brand;
	}
	
	public static boolean saveBrand( Brand brand) {
		boolean resultado=false;
		Session session = Conn.getSession();
		
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(brand);
			session.getTransaction().commit();
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
//	public void pruebaInsert(Car c) {
//		session.getTransaction().begin();
//		session.save(c);
//		session.getTransaction().commit();
//	}
//	
//	public void pruebaUpdate(Car c) {
//		session.getTransaction().begin();
//		session.update(c);
//		session.getTransaction().commit();
//	}
	
	public  static boolean  pruebaDelete(Brand brand) {
		boolean resultado= false;
		Session session =Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(brand);
			session.getTransaction();
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		
		return resultado;
	}
	
	
	
}

