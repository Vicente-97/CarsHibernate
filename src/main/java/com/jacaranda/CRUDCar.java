package com.jacaranda;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDCar {

	public static Car getCar(String id ) {
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
			session.getTransaction();
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
	
	