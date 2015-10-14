package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class Event implements Serializable{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    private long id ;
    private String eventName;
    /**
     * @return the id
     */
    public long getId() {
	return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(long id) {
	this.id = id;
    }
    /**
     * @return the eventName
     */
    public String getEventName() {
	return eventName;
    }
    /**
     * @param eventName the eventName to set
     */
    public void setEventName(String eventName) {
	this.eventName = eventName;
    }
}
