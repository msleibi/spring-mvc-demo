package com.luv2code.springdemo.mvc;

import java.util.LinkedHashMap;

public class Student {
	
	private String firstName;
	private String lastName;
	private String country;
	private LinkedHashMap<String,String> countryOptions;
	private String favoriteLanguage;
	private String[] favoriteOperatingSys;
	
	public Student(){
		// loading the Country options from the Student class instead of Frontend
		/* countryOptions = new LinkedHashMap<String, String>();
		countryOptions.put("Belgium", "Belgium");
		countryOptions.put("Germany", "Germany");
		countryOptions.put("Netherlands", "Netherlands");
		countryOptions.put("Sweden", "Sweden");
		countryOptions.put("Spain", "Spain"); */
		
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public String getFavoriteLanguage() {
		return favoriteLanguage;
	}

	public void setFavoriteLanguage(String favoriteLanguage) {
		this.favoriteLanguage = favoriteLanguage;
	}

	public String[] getFavoriteOperatingSys() {
		return favoriteOperatingSys;
	}

	public void setFavoriteOperatingSys(String[] favoriteOperatingSys) {
		this.favoriteOperatingSys = favoriteOperatingSys;
	}
	
	
	
}
