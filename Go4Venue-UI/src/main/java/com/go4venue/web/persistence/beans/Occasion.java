package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class Occasion implements Serializable{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private int key;
    private String name;
    
    /**
     * @return the key
     */
    public int getKey() {
	return key;
    }
    /**
     * @param key the key to set
     */
    public void setKey(int key) {
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
