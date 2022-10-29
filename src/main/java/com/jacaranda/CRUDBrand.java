package com.jacaranda;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;


/**
 * Clase encargada del control de la marca, dispone de varios metodos:
 * -Buscar la marca por nombre de la marca,
 * -Añadir una marca a la lista de marcas. Este metodo nos servirá para actualizar la marca
 * ya que si no existe la crea y si existe la updatea.
 * -Borrar una marca.
 * -Obtener todas las marcas.
 * @author vicente
 *
 */
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
	
	
	public  static boolean  deleteBrand(Brand brand) {
		boolean resultado= false;
		Session session =Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(brand);
			session.getTransaction().commit();;
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		
		return resultado;
	}
	
	public static ArrayList<Brand> getBrands(){
		Session session = Conn.getSession();
		
		Query<Brand> query = session.createQuery("SELECT p FROM com.jacaranda.Brand p");
		ArrayList<Brand> brand = (ArrayList<Brand>) query.getResultList();
		
		return brand;
	}
	
	
}

