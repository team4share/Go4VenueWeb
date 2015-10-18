/**
 * 
 */
package com.go4venue.web.service;

import java.util.List;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.VenueRaw;

/**
 * @authorTushar
 * @date 18Oct 2015
 * 
 *
 */
public interface VenueListingService {
    public List<VenueRaw> getVenueListing(VenueSearchInfo venueSearchInfo);
}
