package net.tryapp.spring3.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes
public class BasicController {

	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String login(ModelMap model) { 
		return "home"; 
	}
	
}
