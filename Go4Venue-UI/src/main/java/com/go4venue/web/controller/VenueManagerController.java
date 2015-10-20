/**
 * 
 */
package com.go4venue.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.service.VenueListingService;

/**
 * @date 18 Ovt 2015
 * @author Tushar Srivastava
 * 
 *         THis controller file is used to manage all the controller functions of the Venue
 */

@Controller
public class VenueManagerController {
    private Logger LOG = Logger.getLogger(ApplicationController.class);

    @Autowired
    private VenueListingService venueListingService;

    /**
     * 
     * @param model
     * @return jsp view(venueListing) This method is mapped to the request for the listing the venues
     */
    @RequestMapping(value = "/listVenues", method = RequestMethod.POST)
    public String listVenues(@ModelAttribute VenueSearchInfo venueSearchInfo, ModelMap model) {
			LOG.info(venueSearchInfo.getLocationId() + "  " + venueSearchInfo.getOccasionId());
			model.put("venueList", venueListingService.getVenueListing(venueSearchInfo));
	return "VenueListing";
    }

}
