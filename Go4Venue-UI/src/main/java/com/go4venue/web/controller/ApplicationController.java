package com.go4venue.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.service.ApplicationService;
import com.go4venue.web.service.CollectImagesService;
/**
 * @author Rohit Chhonker
 *
 * This is main Application Controller to serve all the generic requests of the website.
 */
@Controller
public class ApplicationController {
    private Logger LOG = Logger.getLogger(ApplicationController.class);

    @Autowired
    private ApplicationService applicationService;
    @Autowired
    private CollectImagesService collectImagesService;

    /**
     * This method is being used to serve the home page of the website.
     * @param model
     * @return indexPage
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String displayHomePage(ModelMap model) {
	LOG.info("home page of the site was requested.");
	//model.addAttribute("name", "Project Starts From Here..");
	VenueSearchInfo venueSearchInfo = new VenueSearchInfo();
	model.put("title", applicationService.getPageTitle("/"));
	model.put("venueSearchInfo",venueSearchInfo);
	model.put("occasions", applicationService.getOccasions());
	model.put("cities", applicationService.getCities());
	String homePage = "Index";
	return homePage;
    }
    /**
     * This method is being used to save the images and returns the status in form of success and error.
     * @param model
     * @return status
     */
    @RequestMapping(value = "/saveimages", method = RequestMethod.GET)
    public String saveimages(ModelMap model) {
	LOG.info("save images");
	model.addAttribute("name", "We are saving images Here..");
	try {
	    collectImagesService.getAllImages();
	} catch (Exception exception) {
	    LOG.error("Exception Occured While downloading the images" , exception);
	}
	return "DownloadImagesPage";
    }
}
