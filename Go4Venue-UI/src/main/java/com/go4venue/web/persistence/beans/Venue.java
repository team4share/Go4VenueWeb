package com.go4venue.web.persistence.beans;

import java.io.Serializable;
import java.util.Set;

public class Venue implements Serializable{
    
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private long key;
    private String name;
    private String capacity;
    private String price;
    private String contact;
    private String address;
    private String description;
    private String operatingTime;
    private int status;
    private Long ownerId;
    private String websiteUrl;
    private String fbUrl;
    private Double lattitude;
    private Double longitude;
    private String amenities;
    private String occasions;
    private String type;
    private String cusines;
    //private Set<VenueImage>images;
    
    /**
     * @return the id
     */
    public long getKey() {
        return key;
    }
   /* *//**
     * @return the images
     *//*
    public Set<VenueImage> getImages() {
        return images;
    }
    *//**
     * @param images the images to set
     *//*
    public void setImages(Set<VenueImage> images) {
        this.images = images;
    }
   */ /**
     * @param id the id to set
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
     * @return the capacity
     */
    public String getCapacity() {
        return capacity;
    }
    /**
     * @param capacity the capacity to set
     */
    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }
    /**
     * @return the price
     */
    public String getPrice() {
        return price;
    }
    /**
     * @param price the price to set
     */
    public void setPrice(String price) {
        this.price = price;
    }
    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }
    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }
    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }
    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }
    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }
    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }
    /**
     * @return the operatingTime
     */
    public String getOperatingTime() {
        return operatingTime;
    }
    /**
     * @param operatingTime the operatingTime to set
     */
    public void setOperatingTime(String operatingTime) {
        this.operatingTime = operatingTime;
    }
    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }
    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }
    /**
     * @return the ownerId
     */
    public Long getOwnerId() {
        return ownerId;
    }
    /**
     * @param ownerId the ownerId to set
     */
    public void setOwnerId(Long ownerId) {
        this.ownerId = ownerId;
    }
    /**
     * @return the websiteUrl
     */
    public String getWebsiteUrl() {
        return websiteUrl;
    }
    /**
     * @param websiteUrl the websiteUrl to set
     */
    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl = websiteUrl;
    }
    /**
     * @return the fbUrl
     */
    public String getFbUrl() {
        return fbUrl;
    }
    /**
     * @param fbUrl the fbUrl to set
     */
    public void setFbUrl(String fbUrl) {
        this.fbUrl = fbUrl;
    }
    /**
     * @return the lattitude
     */
    public Double getLattitude() {
        return lattitude;
    }
    /**
     * @param lattitude the lattitude to set
     */
    public void setLattitude(Double lattitude) {
        this.lattitude = lattitude;
    }
    /**
     * @return the longitude
     */
    public Double getLongitude() {
        return longitude;
    }
    /**
     * @param longitude the longitude to set
     */
    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }
    /**
     * @return the amenities
     */
    public String getAmenities() {
        return amenities;
    }
    /**
     * @param amenities the amenities to set
     */
    public void setAmenities(String amenities) {
        this.amenities = amenities;
    }
    /**
     * @return the occasions
     */
    public String getOccasions() {
        return occasions;
    }
    /**
     * @param occasions the occasions to set
     */
    public void setOccasions(String occasions) {
        this.occasions = occasions;
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
    /**
     * @return the cusines
     */
    public String getCusines() {
        return cusines;
    }
    /**
     * @param cusines the cusines to set
     */
    public void setCusines(String cusines) {
        this.cusines = cusines;
    }   
}   
