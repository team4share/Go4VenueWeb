package com.go4venue.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.go4venue.web.persistence.beans.Event;
import com.go4venue.web.service.EventService;

@Controller
public class EventController {
    
    private Logger LOG = Logger.getLogger(EventController.class);
    @Autowired
    private EventService eventService;
    
    
    /**
     * This function is being used to create/plan an event.
     * 
     * @param event
     * @return
     */
    @RequestMapping(value = "/createNewEventPage", method = RequestMethod.GET)
    public String displayCreateNewEventPage(ModelMap model) {
	Event event = new Event();
	model.put("event", event);
	String responsePage = "SeekerDashboard";
	return responsePage;
    }

    
    /**
     * This function is being used to create/plan an event.
     * 
     * @param event
     * @return
     */
    @RequestMapping(value = "/createNewEvent1", method = RequestMethod.POST, produces = "text/html")
    public @ResponseBody String createEvent(@RequestBody Event event) {
	String responsePage = "SeekerDashboard";
	LOG.info("New event creattion request: ");
	eventService.createEvent(event);
	System.out.println(responsePage);
	return responsePage;
    }
}
