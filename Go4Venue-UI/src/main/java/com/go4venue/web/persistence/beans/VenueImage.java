package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class VenueImage implements Serializable{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private Long key;
    private Long venueId;
    private String imagePath;
    private String remarks;
    
    /**
     * @return the key
     */
    public Long getKey() {
        return key;
    }
    /**
     * @param key the key to set
     */
    public void setKey(Long key) {
        this.key = key;
    }
    /**
     * @return the venueId
     */
    public Long getVenueId() {
        return venueId;
    }
    /**
     * @param venueId the venueId to set
     */
    public void setVenueId(Long venueId) {
        this.venueId = venueId;
    }
    /**
     * @return the imagePath
     */
    public String getImagePath() {
        return imagePath;
    }
    /**
     * @param imagePath the imagePath to set
     */
    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    /**
     * @return the remarks
     */
    public String getRemarks() {
        return remarks;
    }
    /**
     * @param remarks the remarks to set
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
