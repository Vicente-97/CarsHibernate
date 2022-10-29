package com.jacaranda;

import java.time.LocalDate;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * Clase coche(Car) compuesta por varios campos, ID es su identificador principal
 * y Brand es una Clave Foránea o FK de la clase Marca, en la base de datos se denomina "car_make".
 * Cada coche pertenecerá a una marca en concreto.
 */
	@Entity
	@Table(name="CAR_DATA")
public class Car {
	
		
	@Id
	private String id;
	@Column(name="model_year")	
	private int modelYear;
	@Column(name="model_auto")	
	private String modelAuto;
	@ManyToOne
	@JoinColumn (name="car_make")
	private Brand carMaker;
	private String availability;
	private double price;
	@Column(name="entry_date")	
	private LocalDate dateEntry;

	public Car() {
	}

	public Car(int modelYear, String modelAuto, Brand carMaker, String availability, double price,
			LocalDate dateEntry, String id) {
		super();
		this.modelYear = modelYear;
		this.modelAuto = modelAuto;
		this.carMaker = carMaker;
		this.availability = availability;
		this.price = price;
		this.dateEntry = dateEntry;
		this.id = id;
	}
	
	

	public int getModelYear() {
		return modelYear;
	}

	public void setModelYear(int modelYear) {
		this.modelYear = modelYear;
	}

	public String getModelAuto() {
		return modelAuto;
	}

	public void setModelAuto(String modelAuto) {
		this.modelAuto = modelAuto;
	}

	public Brand getCarMaker() {
		return carMaker;
	}

	public void setCarMaker(Brand carMaker) {
		this.carMaker = carMaker;
	}

	public String isAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public LocalDate getDateEntry() {
		return dateEntry;
	}

	public void setDateEntry(LocalDate dateEntry) {
		this.dateEntry = dateEntry;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Car other = (Car) obj;
		return Objects.equals(id, other.id);
	}
	
	public String getShortInfo() {
	    return carMaker.getName() + " " + modelAuto + " " + modelYear + " . Con ID: " + id ;
	}

	@Override
	public String toString() {
		return "Car [modelYear=" + modelYear + ", modelAuto=" + modelAuto + ", carMaker=" + carMaker + ", availability="
				+ availability + ", price=" + price + ", dateEntry=" + dateEntry + ", id=" + id + "]";
	}
	

}
