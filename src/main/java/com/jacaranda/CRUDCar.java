package com.jacaranda;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 * Clase encargada del control de los coches, dispone de varios metodos:
 * -Buscar el coche por id.
 * -Añadir un coche a la lista de coches de una marca
 * -Updatear un coche.
 * -Borrar un coche.
 * -Obtener todos los coches de una marca.
 * @author vicente
 *
 */
public class CRUDCar {

	public static Car getCar(String id) {
		Session session = Conn.getSession();
		Car car = (Car) session.get(Car.class,id);
		
		return car;
	}
	
	public static boolean saveCar( Car car) {
		boolean resultado=false;
		Session session = Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.saveOrUpdate(car);
			car.getCarMaker().getListCar().add(car);
			session.getTransaction().commit();
			
			
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	

	public static boolean updateCar( Car car) {
		boolean resultado=false;
		Session session = Conn.getSession();
		
		try {
			session.getTransaction().begin();
			session.update(car);
			session.getTransaction().commit();
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	public  static boolean  carDelete(Car car) {
		boolean resultado= false;
		Session session =Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(car);
			car.getCarMaker().getListCar().remove(car);
			session.getTransaction().commit();;
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		
		return resultado;
	}
	
	public static ArrayList<Car> getCars(Brand brand){
		Session session = Conn.getSession();
		
		ArrayList<Car> list = (ArrayList<Car>) brand.getListCar();
		
		
		return list;
	}
	
}
	
	