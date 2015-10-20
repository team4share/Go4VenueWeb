/**
 * 
 */
package com.go4venue.web.persistence.beans;

import java.io.Serializable;

/**
 * @author Tushar 
 * @date 18Oct2015
 * A raw bean to get the data from venue_raw table
 *
 */

public class VenueRaw implements Serializable {
    private static final long serialVersionUID = 1L;
    private long key;
    private String venueName;
    private String venueCapacity;
    private String venuePrice;
    private String venueType;
    private String venueDescription;
    private Long venueContractId;
    private String venueUrl;
    private String venueOcassions;
    private String venueFacilities;
    private String venueContact;
    private String venueCusines;
    private String venueOperatingTime;
    private String venueAddress;
    
    public long getKey() {
        return key;
    }
    public void setKey(long key) {
        this.key = key;
    }
    public String getVenueName() {
        return venueName;
    }
    public void setVenueName(String venueName) {
        this.venueName = venueName;
    }
    public String getVenueCapacity() {
        return venueCapacity;
    }
    public void setVenueCapacity(String venueCapacity) {
        this.venueCapacity = venueCapacity;
    }
    public String getVenueType() {
        return venueType;
    }
    public void setVenueType(String venueType) {
        this.venueType = venueType;
    }
    public String getVenueDescription() {
        return venueDescription;
    }
    public void setVenueDescription(String venueDescription) {
        this.venueDescription = venueDescription;
    }
    public Long getVenueContractId() {
        return venueContractId;
    }
    public void setVenueContractId(Long venueContractId) {
        this.venueContractId = venueContractId;
    }
    public String getVenueUrl() {
        return venueUrl;
    }
    public void setVenueUrl(String venueUrl) {
        this.venueUrl = venueUrl;
    }
    public String getVenueOcassions() {
        return venueOcassions;
    }
    public void setVenueOcassions(String venueOcassions) {
        this.venueOcassions = venueOcassions;
    }
    
    public String getVenueFacilities() {
        return venueFacilities;
    }
    public void setVenueFacilities(String venueFacilities) {
        this.venueFacilities = venueFacilities;
    }
    public String getVenueContact() {
        return venueContact;
    }
    public void setVenueContact(String venueContact) {
        this.venueContact = venueContact;
    }
    /**
     * @return the venuePrice
     */
    public String getVenuePrice() {
        return venuePrice;
    }
    /**
     * @param venuePrice the venuePrice to set
     */
    public void setVenuePrice(String venuePrice) {
        this.venuePrice = venuePrice;
    }
    /**
     * @return the venueCusines
     */
    public String getVenueCusines() {
        return venueCusines;
    }
    /**
     * @param venueCusines the venueCusines to set
     */
    public void setVenueCusines(String venueCusines) {
        this.venueCusines = venueCusines;
    }
    /**
     * @return the venueOperatingTime
     */
    public String getVenueOperatingTime() {
        return venueOperatingTime;
    }
    /**
     * @param venueOperatingTime the venueOperatingTime to set
     */
    public void setVenueOperatingTime(String venueOperatingTime) {
        this.venueOperatingTime = venueOperatingTime;
    }
    /**
     * @return the venueAddress
     */
    public String getVenueAddress() {
        return venueAddress;
    }
    /**
     * @param venueAddress the venueAddress to set
     */
    public void setVenueAddress(String venueAddress) {
        this.venueAddress = venueAddress;
    }
   
 }
