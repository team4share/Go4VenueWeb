package com.go4venue.web.persistence.beans;
import java.io.Serializable;

public class VenueType implements Serializable{
    
    private static final long serialVersionUID = 1L;
    private long key ;
    private String type;
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
     * @return the type
     */
    public String getType() {
	return type;
    }
    /**
     * @param type the type to set
     */
    public void setType(String type) {
	this.type = type;
    }

}