/**
 * 
 */
package com.go4venue.web.dao;

import java.util.List;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.GuestRange;
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.Venue;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.persistence.beans.VenueType;

/**
 * @author Rohit Chhonker
 *
 */
public interface VenueManagerDao {
    	public List<Venue> geVenueData(VenueSearchInfo venueSearchInfo);
    	public List<Locality> getLocalities(long cityId);
    	public List<Amenities> getAmenities();
    	public List<GuestRange> getExpectedGuestsRange();
    	public List<VenueType> getVenueTypes();
    	public Venue getVenueById(long id);
	List<String> getVenueImages(long venueId);
	public Amenities getAmenityByCode(String code);
}
