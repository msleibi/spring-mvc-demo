package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		Student theStudent = new Student();
		
		model.addAttribute("student", theStudent);
		
		//or
		
	//	model.addAttribute("student", new Student());
		
		return "student-form";
	}
	
	
	@RequestMapping("/processStudentForm")
	public String processForm(@ModelAttribute ("student") Student theStudent) {
		
		return "student-confirmation";
	}
	
	

}
