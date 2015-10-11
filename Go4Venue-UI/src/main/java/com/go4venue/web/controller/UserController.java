package com.go4venue.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.go4venue.web.persistence.beans.User;
import com.go4venue.web.service.UserService;

@Controller
public class UserController {

    private Logger LOG = Logger.getLogger(ApplicationController.class);
    @Autowired
    private UserService userService;
    
    
    
    /**
     * This method is being used to serve the Registration page of the website.
     * @param model
     * @return registrationPage
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String displayRegistrationPage(ModelMap model) {
	LOG.info("Registration page of the site was requested.");
	String registrationPage = "registration";
	return registrationPage;
    }
    
    
    /**
     * This method is being used to serve the Registration page of the website.
     * @param model
     * @return loginPage
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String displayLoginPage(ModelMap model) {
	LOG.info("Login page of the site was requested.");
	String loginPage = "login";
	return loginPage;
    }
    
    
    
    /**
     * This function is being used to register the user.
     * @param user
     * @return 
     */
    @RequestMapping(value = "/registerUser", method = RequestMethod.POST , produces = "application/json")
    public @ResponseBody String registerUser(@RequestBody User user) {
	System.out.println(user.getUserType());
	String responsePage = "Seeker";
	LOG.info("Register User of type : "+ user.getUserType());
	userService.saveUser(user);
	if(("Owner").equalsIgnoreCase(user.getUserType())) {
	    responsePage = "Owner";
	}
	System.out.println(responsePage);
	return responsePage;
    }
 }
