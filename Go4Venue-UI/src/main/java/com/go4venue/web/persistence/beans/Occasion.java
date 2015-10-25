package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class Occasion implements Serializable{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private long key;
    private String name;
    
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
     * @return the name
     */
    public String getName() {
	return name;
    }
    /**
     * @param name the name to set
     */
    public void setName(String name) {
	this.name = name;
    }

}
