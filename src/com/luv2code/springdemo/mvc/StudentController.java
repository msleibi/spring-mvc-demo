package com.luv2code.springdemo.mvc;


import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Value("#{countryOptions}") 
	private Map<String,String> countryOptions;
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		Student theStudent = new Student();
		
		model.addAttribute("student", theStudent);
		
		//or
		
	//	model.addAttribute("student", new Student());
		
		// Adding the country options to the Model from the countries.properties file
		model.addAttribute("theCountryOptions", countryOptions);
		
		return "student-form";
	}
	
	
	@RequestMapping("/processStudentForm")
	public String processForm(@ModelAttribute ("student") Student theStudent) {
		
		System.out.println("The student: " + theStudent.getFirstName() + 
				" " + theStudent.getLastName() + 
				"\n" + 
				"The country: " + theStudent.getCountry() +
				"\n" + 
				"The favorite programming language: " + theStudent.getFavoriteLanguage());
		
		for (String opSystem : theStudent.getFavoriteOperatingSys()) {
			System.out.print("The favorite operating system: " + opSystem + ", ");
		}
		
		return "student-confirmation";
	}
	
	

}
