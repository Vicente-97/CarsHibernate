package com.jacaranda;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

	@Entity
public class Brand {
	@Id
	private String name;
	private String country;
	private String address;
	@OneToMany(mappedBy="carMaker", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Car> listaCoches;
	
	
	public Brand() {
		
	}
	
	public Brand(String name, String country, String address) {
		super();
		this.name = name;
		this.country = country;
		this.address = address;
		listaCoches= new ArrayList<>();
	}

	
	public void addCar(Car car) {
		listaCoches.add(car);
		
	}
	
	public void removeCar(Car car) {
		listaCoches.remove(car);
		
	}
	
	
	@Override
	public String toString() {
		return "Brand [name=" + name + ", country=" + country + ", address=" + address + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(address, country, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Brand other = (Brand) obj;
		return Objects.equals(address, other.address) && Objects.equals(country, other.country)
				&& Objects.equals(name, other.name);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
