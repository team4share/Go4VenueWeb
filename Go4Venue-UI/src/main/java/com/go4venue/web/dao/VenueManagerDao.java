/**
 * 
 */
package com.go4venue.web.dao;

import java.util.List;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.persistence.beans.VenueRaw;

/**
 * @author Rohit Chhonker
 *
 */
public interface VenueManagerDao {
    	public List<VenueRaw> geVenueData(VenueSearchInfo venueSearchInfo);
}
