package com.go4venue.web.persistence.beans;

import java.io.Serializable;

public class VenueLocation implements Serializable{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private long id;
    private long venueId;
    private String venueCity;
    private long venuePincode;
    private long venueLatitude;
    private long venueLongitude;
    private int distanceFromRailwayStation;
    private int distanceFromBusStand;
    private int distanceFromAirport;
   
    /**
     * @return the id
     */
    public long getId() {
        return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
    /**
     * @return the venueId
     */
    public long getVenueId() {
        return venueId;
    }
    /**
     * @param venueId the venueId to set
     */
    public void setVenueId(long venueId) {
        this.venueId = venueId;
    }
    /**
     * @return the venueCity
     */
    public String getVenueCity() {
        return venueCity;
    }
    /**
     * @param venueCity the venueCity to set
     */
    public void setVenueCity(String venueCity) {
        this.venueCity = venueCity;
    }
    /**
     * @return the venuePincode
     */
    public long getVenuePincode() {
        return venuePincode;
    }
    /**
     * @param venuePincode the venuePincode to set
     */
    public void setVenuePincode(long venuePincode) {
        this.venuePincode = venuePincode;
    }
    /**
     * @return the venueLatitude
     */
    public long getVenueLatitude() {
        return venueLatitude;
    }
    /**
     * @param venueLatitude the venueLatitude to set
     */
    public void setVenueLatitude(long venueLatitude) {
        this.venueLatitude = venueLatitude;
    }
    /**
     * @return the venueLongitude
     */
    public long getVenueLongitude() {
        return venueLongitude;
    }
    /**
     * @param venueLongitude the venueLongitude to set
     */
    public void setVenueLongitude(long venueLongitude) {
        this.venueLongitude = venueLongitude;
    }
    /**
     * @return the distanceFromRailwayStation
     */
    public int getDistanceFromRailwayStation() {
        return distanceFromRailwayStation;
    }
    /**
     * @param distanceFromRailwayStation the distanceFromRailwayStation to set
     */
    public void setDistanceFromRailwayStation(int distanceFromRailwayStation) {
        this.distanceFromRailwayStation = distanceFromRailwayStation;
    }
    /**
     * @return the distanceFromBusStand
     */
    public int getDistanceFromBusStand() {
        return distanceFromBusStand;
    }
    /**
     * @param distanceFromBusStand the distanceFromBusStand to set
     */
    public void setDistanceFromBusStand(int distanceFromBusStand) {
        this.distanceFromBusStand = distanceFromBusStand;
    }
    /**
     * @return the distanceFromAirport
     */
    public int getDistanceFromAirport() {
        return distanceFromAirport;
    }
    /**
     * @param distanceFromAirport the distanceFromAirport to set
     */
    public void setDistanceFromAirport(int distanceFromAirport) {
        this.distanceFromAirport = distanceFromAirport;
    }
    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}
