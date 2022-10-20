package com.jacaranda;

import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
	@Entity(name="CAR_DATA")
public class Car {
	
	@Column(name="model_year")
	private int modelYear;
	
	@Column(name="model_auto")
	private String modelAuto;
	
	@ManyToOne
	@JoinColumn(name="car_make")
	private Brand carMaker;
	
	@Column(name="availability")
	private String availability;
	
	@Column(name="price")
	private double price;
	
	@Column(name="entry_date")
	private LocalDate dateEntry;
	
	@Id
	private String id;

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
	    return carMaker + " " + modelAuto + " " + modelYear + " . Con ID: " + id ;
	}

	@Override
	public String toString() {
		return "Car [modelYear=" + modelYear + ", modelAuto=" + modelAuto + ", carMaker=" + carMaker + ", availability="
				+ availability + ", price=" + price + ", dateEntry=" + dateEntry + ", id=" + id + "]";
	}
	

}
