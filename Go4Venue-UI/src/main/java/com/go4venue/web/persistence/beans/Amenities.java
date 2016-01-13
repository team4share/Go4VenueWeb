package com.go4venue.web.persistence.beans;
import java.io.Serializable;

public class Amenities implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private long key;
    private String name;
    private String css;
    private String code;
    
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
    /**
     * @return the css
     */
    public String getCss() {
	return css;
    }
    /**
     * @param css the css to set
     */
    public void setCss(String css) {
	this.css = css;
    }
    /**
     * @return the code
     */
    public String getCode() {
	return code;
    }
    /**
     * @param code the code to set
     */
    public void setCode(String code) {
	this.code = code;
    }

}