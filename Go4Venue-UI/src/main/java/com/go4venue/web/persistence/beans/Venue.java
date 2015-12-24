package com.go4venue.web.persistence.beans;

import java.io.Serializable;
import java.util.Set;

public class Venue implements Serializable{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private long key;
    private String venueName;
    private String venueCapacity;
    private long venuePrice;
    private String venueType;
    private String venueDescription;
    private long venueContractId;
    private String venueUrl;
    private Set<VenueImage>images;
    
    /**
     * @return the id
     */
    public long getKey() {
        return key;
    }
    /**
     * @return the images
     */
    public Set<VenueImage> getImages() {
        return images;
    }
    /**
     * @param images the images to set
     */
    public void setImages(Set<VenueImage> images) {
        this.images = images;
    }
    /**
     * @param id the id to set
     */
    public void setKey(long key) {
        this.key = key;
    }
    /**
     * @return the venueName
     */
    public String getVenueName() {
        return venueName;
    }
    /**
     * @param venueName the venueName to set
     */
    public void setVenueName(String venueName) {
        this.venueName = venueName;
    }
    /**
     * @return the venuePrice
     */
    public long getVenuePrice() {
        return venuePrice;
    }
    /**
     * @param venuePrice the venuePrice to set
     */
    public void setVenuePrice(long venuePrice) {
        this.venuePrice = venuePrice;
    }
    /**
     * @return the venueType
     */
    public String getVenueType() {
        return venueType;
    }
    /**
     * @param venueType the venueType to set
     */
    public void setVenueType(String venueType) {
        this.venueType = venueType;
    }
    /**
     * @return the venueDescription
     */
    public String getVenueDescription() {
        return venueDescription;
    }
    /**
     * @param venueDescription the venueDescription to set
     */
    public void setVenueDescription(String venueDescription) {
        this.venueDescription = venueDescription;
    }
    /**
     * @return the venueContractId
     */
    public long getVenueContractId() {
        return venueContractId;
    }
    /**
     * @param venueContractId the venueContractId to set
     */
    public void setVenueContractId(long venueContractId) {
        this.venueContractId = venueContractId;
    }
    /**
     * @return the venueUrl
     */
    public String getVenueUrl() {
        return venueUrl;
    }
    /**
     * @param venueUrl the venueUrl to set
     */
    public void setVenueUrl(String venueUrl) {
        this.venueUrl = venueUrl;
    }
    /**
     * @return the venueCapacity
     */
    public String getVenueCapacity() {
	return venueCapacity;
    }
    /**
     * @param venueCapacity the venueCapacity to set
     */
    public void setVenueCapacity(String venueCapacity) {
	this.venueCapacity = venueCapacity;
    }
}
