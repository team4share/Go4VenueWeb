package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class Event implements Serializable{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    private long key ;
    private String eventName;
    
    /**
     * @return the key
     */
    public long getKey() {
	return key;
    }
    /**
     * @param key the key to set
     */
    public void setKey(long key) {
	this.key = key;
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
