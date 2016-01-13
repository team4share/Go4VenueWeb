/**
 * 
 */
package com.go4venue.web.service;

import java.util.List;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.Venue;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.persistence.beans.VenueType;

/**
 * @authorTushar
 * @date 18Oct 2015
 * 
 *
 */
public interface VenueListingService {
    public List<Venue> getVenueListing(VenueSearchInfo venueSearchInfo);

    public List<Amenities> getAmenities();

    public List<VenueType> getVenueTypes();

    public List<Locality> getLocalities(long cityId);

    //Amenities getAmenityByCode(long code);
}
