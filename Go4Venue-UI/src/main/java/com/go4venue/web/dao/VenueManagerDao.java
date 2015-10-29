/**
 * 
 */
package com.go4venue.web.dao;

import java.util.List;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.GuestRange;
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.persistence.beans.VenueType;

/**
 * @author Rohit Chhonker
 *
 */
public interface VenueManagerDao {
    	public List<VenueRaw> geVenueData(VenueSearchInfo venueSearchInfo);
    	public List<Locality> getLocalities(int cityId);
    	public List<Amenities> getAmenities();
    	public List<GuestRange> getExpectedGuestsRange();
    	public List<VenueType> getVenueType();
}
