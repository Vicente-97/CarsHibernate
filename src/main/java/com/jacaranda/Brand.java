package com.jacaranda;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
/**
 * Clase Marca (Brand), compuesta por un campo nombre, país y dirección. El campo nombre será su identificador principal.
 * Cada marca tendrá una lista de coches que pertenezcan a dicha marca.
 */
	@Entity(name="Brand")
public class Brand {
	@Id
	private String name;
	@Column(name="country")
	private String country;
	@Column(name="address")
	private String address;
	@OneToMany(mappedBy="carMaker", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Car> listCar;
	
	
	public Brand() {
		
	}
	
	public Brand(String name, String country, String address) {
		super();
		this.name = name;
		this.country = country;
		this.address = address;
		this.listCar = null;
	}

	public Brand(String name, String country, String address, List<Car> listCar) {
		super();
		this.name = name;
		this.country = country;
		this.address = address;
		this.listCar = null;
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


	public List<Car> getListCar() {
		List<Car> cc= listCar;
		return cc;
	}


	public void setListCar(List<Car> listCar) {
		this.listCar = listCar;
	}


	@Override
	public int hashCode() {
		return Objects.hash(address, country, listCar, name);
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
				&& Objects.equals(listCar, other.listCar) && Objects.equals(name, other.name);
	}
	
	public String getShortInfo() {
	    return name + " " + country + " " + address ;
	}


	@Override
	public String toString() {
		return "Brand [name=" + name + ", country=" + country + ", address=" + address + ", listCar=" + listCar + "]";
	}
	
	
	
}

