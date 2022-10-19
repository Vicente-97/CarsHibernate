package com.jacaranda;

import java.time.LocalDate;
import java.util.Objects;

public class Car {
	
	private int modelYear;
	private String modelAuto;
	private String carMaker;
	private String availability;
	private double price;
	private LocalDate dateEntry;
	private String id;

	public Car() {
	}

	public Car(int modelYear, String modelAuto, String carMaker, String availability, double price,
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

	public String getCarMaker() {
		return carMaker;
	}

	public void setCarMaker(String carMaker) {
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
