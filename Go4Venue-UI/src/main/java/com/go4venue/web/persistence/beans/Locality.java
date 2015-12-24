package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class Locality implements Serializable{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
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
    /**
     * @return the cityId
     */
    public long getCityId() {
	return cityId;
    }
    /**
     * @param cityId the cityId to set
     */
    public void setCityId(long cityId) {
	this.cityId = cityId;
    }
    private long key;
    private String name;
    private long cityId;

}
