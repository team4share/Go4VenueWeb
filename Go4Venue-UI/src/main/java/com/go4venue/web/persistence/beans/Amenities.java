package com.go4venue.web.persistence.beans;
import java.io.Serializable;

public class Amenities implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private long key;
    private String name;
    public long getKey() {
	return key;
    }
    public void setKey(long key) {
	this.key = key;
    }
    public String getName() {
	return name;
    }
    public void setName(String name) {
	this.name = name;
    }

}