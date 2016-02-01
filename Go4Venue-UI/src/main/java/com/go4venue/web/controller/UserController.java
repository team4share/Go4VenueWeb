package com.go4venue.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.go4venue.web.core.beans.LoginInfo;
import com.go4venue.web.persistence.beans.OTPString;
import com.go4venue.web.persistence.beans.User;
import com.go4venue.web.service.UserService;
import org.kamranzafar.otp.*;

@Controller
public class UserController {

    private Logger LOG = Logger.getLogger(ApplicationController.class);
    @Autowired
    private UserService userService;
    private User user;
    private String authMessage;
  

    /**
     * This method is being used to serve the Registration page of the website.
     * 
     * @param model
     * @return registrationPage
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView  displayRegistrationPage(ModelMap model) {
	LOG.info("Registration page of the site was requested.");
	//String registrationPage = "Registration";
	return new ModelAndView("Registration", "command", new User());
	//return registrationPage;
    }
    
  

    


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String displayLoginPage(ModelMap model) {
	LoginInfo loginInfo = new LoginInfo();
	model.put("loginInfo", loginInfo);
	LOG.info("Login page of the site was requested.");
	String loginPage = "Login";
	return loginPage;
    }

   /** This function is being used to register the user.
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public String loginUser(@ModelAttribute LoginInfo loginInfo) {
	String responsePage = "InvalidUser";
	System.out.println(loginInfo.getEmail());
	try {
	    boolean isValidUser = userService.isValidUser(loginInfo);
	    if (isValidUser) {
		LOG.info("User Login Successful");
		User user = userService.getUser(loginInfo);
		responsePage = user.getUserType().equalsIgnoreCase("owner")?"OwnerDashboard":"SeekerDashboard";
		
	    } 
	} catch (Exception e) {
	    LOG.error("Invalid User");
	}
	return responsePage;
    }

    /**
     * This function is being used to register the user.
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    public  ModelAndView registerUser(@ModelAttribute User user) {
	System.out.println(user);
	String responsePage = "Seeker";
	LOG.info("Register User of type : " + user.getUserType());
//	userService.saveUser(user);
	this.user = user;
	/*if (("Owner").equalsIgnoreCase(user.getUserType())) {
	    responsePage = "Owner";
	}*/
	OTPString otpString = new OTPString();
	String otpStr = OTP.generate("9873065413", "", 6, "totp");
	otpString.setOtpValue(otpStr);
	user.setOtpString(otpString);
	System.out.println(responsePage);
	return new ModelAndView("verifyOTP", "command", new OTPString());
    }
    
    
    
    @RequestMapping(value="/otp",method=RequestMethod.POST)
    public  String validateOTP(@ModelAttribute OTPString otpString,Model model) {
    	String page = "verifyOTP";
    	if(otpString.getOtpValue().equals(user.getOtpString().getOtpValue())){
    		userService.saveUser(user);
    		this.setAuthMessage("OTP Verified");
    		 model.addAttribute("error", "Authenticated");
    		    
    	}
    	else{
    		 model.addAttribute("error", "Not Authenticated");
    		this.setAuthMessage("Not Verified");	
    	}
    	return "otpRedirect";
    }






	public String getAuthMessage() {
		return authMessage;
	}






	public void setAuthMessage(String authMessage) {
		this.authMessage = authMessage;
	}
    
    
}
