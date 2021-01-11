package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	// Controller method to show the initial HTML form
	
	@RequestMapping("/showForm")
	public String showingForm() {
		
		return "helloWorld-form";
	}
	
	// Controller method to process the HTML form
	@RequestMapping("/processForm")
	public String processingForm() {
		
		return "helloWorld";
	}
	
	
	// Controller method to read form data and add data to model
	
	@RequestMapping("/processFormVersionTwo")
	public String letUsShout(HttpServletRequest request, Model model) {
		
		// read the request parameter from the HTML form
		String theName = request.getParameter("studentName");
		
		// convert the data to Uppercase 
		theName = theName.toUpperCase();
		
		// create the message
		String result = "Yo! " + theName;
		
		// add message to the Model
		model.addAttribute("message", result);
		
		return "helloWorld";
	}
	
	// Controller method to read form data and add data to model
	
		@RequestMapping("/processFormVersionThree")
		public String processFormVersionThree(@RequestParam ("studentName") String theName, Model model) {
			
			// convert the data to Uppercase 
			theName = theName.toUpperCase();
			
			// create the message
			String result = "Hey from version 3 " + theName;
			
			// add message to the Model
			model.addAttribute("message", result);
			
			return "helloWorld";
		}
}
