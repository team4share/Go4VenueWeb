package com.go4venue.web.persistence.beans;

import java.io.Serializable;



public class Event implements Serializable{
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private long key ;
    private int occasionId;
    private String date;
    private String buggetRange;
    private int guestCount;
    private int cityId;
    private boolean isFlexibleDate;
    private String locality;
    private String remarks;
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
     * @return the occasionId
     */
    public int getOccasionId() {
        return occasionId;
    }
    /**
     * @param occasionId the occasionId to set
     */
    public void setOccasionId(int occasionId) {
        this.occasionId = occasionId;
    }
    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }
    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }
    /**
     * @return the buggetRange
     */
    public String getBuggetRange() {
        return buggetRange;
    }
    /**
     * @param buggetRange the buggetRange to set
     */
    public void setBuggetRange(String buggetRange) {
        this.buggetRange = buggetRange;
    }
    /**
     * @return the guestCount
     */
    public int getGuestCount() {
        return guestCount;
    }
    /**
     * @param guestCount the guestCount to set
     */
    public void setGuestCount(int guestCount) {
        this.guestCount = guestCount;
    }
    /**
     * @return the cityId
     */
    public int getCityId() {
        return cityId;
    }
    /**
     * @param cityId the cityId to set
     */
    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
    /**
     * @return the isFlexibleDate
     */
    public boolean getIsFlexibleDate() {
        return isFlexibleDate;
    }
    /**
     * @param isFlexibleDate the isFlexibleDate to set
     */
    public void setIsFlexibleDate(boolean isFlexibleDate) {
        this.isFlexibleDate = isFlexibleDate;
    }
    /**
     * @return the locality
     */
    public String getLocality() {
        return locality;
    }
    /**
     * @param locality the locality to set
     */
    public void setLocality(String locality) {
        this.locality = locality;
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
