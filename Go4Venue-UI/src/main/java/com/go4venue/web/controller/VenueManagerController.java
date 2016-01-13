/**
 * 
 */
package com.go4venue.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.City;
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.Venue;
import com.go4venue.web.service.ApplicationService;
import com.go4venue.web.service.VenueListingService;
import com.google.gson.Gson;

/**
 * @date 18 Ovt 2015
 * @author Tushar Srivastava This controller file is used to manage all the controller functions of the Venue
 */

@Controller
public class VenueManagerController {
    private Logger LOG = Logger.getLogger(ApplicationController.class);
    @Autowired
    private VenueListingService venueListingService;
    @Autowired
    private ApplicationService applicationService;

    /**
     * 
     * @param model
     * @return jsp view(venueListing) This method is mapped to the request for the listing the venues
     */
    @RequestMapping(value = "/listVenues", method = RequestMethod.POST)
    public String listVenues(@ModelAttribute VenueSearchInfo venueSearchInfo, ModelMap model) {
	LOG.info(venueSearchInfo.getLocationId() + "  " + venueSearchInfo.getOccasionId());
	List<Venue> venues = venueListingService.getVenueListing(venueSearchInfo);
	List<Venue> venuesList = new ArrayList<>();
	for (Venue venueRaw : venues) {
	    venueRaw.setName(venueRaw.getName().replace("http://www.venuelook.com/", ""));
	    venueRaw.setWebsiteUrl(venueRaw.getWebsiteUrl().replace("http://www.venuelook.com/", ""));
	    venueRaw.setDescription("");
	    venuesList.add(venueRaw);
	}
	
	Gson gson = new Gson();
	System.out.println(gson.toJson(venuesList));
	model.put("venueList", gson.toJson(venuesList));
	model.put("title", applicationService.getPageTitle("/listVenues"));
	model.put("cities", gson.toJson(applicationService.getCities()));
	model.put("occasions", gson.toJson(applicationService.getOccasions()));
	model.put("amenities", gson.toJson(venueListingService.getAmenities()));
	model.put("venueTypes", gson.toJson(venueListingService.getVenueTypes()));
	return "VenueListing";
    }

    /**
     * This function is being used to register the user.
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "/getLocalities", method = RequestMethod.POST, produces = "application/json")
    public @ResponseBody List<Locality> getLocalities(@RequestBody City city) {
	System.out.println(city.getKey());
	return venueListingService.getLocalities(city.getKey());
    }
    
    
    @RequestMapping(value = "/getVenueDescription", method = RequestMethod.GET)
    public String getVenueDescription() {
	return "VenueDescription";
    }
}
