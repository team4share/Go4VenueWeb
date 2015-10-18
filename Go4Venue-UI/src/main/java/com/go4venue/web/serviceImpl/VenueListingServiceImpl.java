/**
 * 
 */
package com.go4venue.web.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.dao.VenueManagerDao;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.service.VenueListingService;

/**
 * @author Tushar
 * @date 18 Oct 2015
 * @version 1.0
 * This service class contains the BL for Listing the venues
 * 
 *
 */
@Service
public class VenueListingServiceImpl implements VenueListingService {

    @Autowired
    private VenueManagerDao venueManager;
    @Override
    public List<VenueRaw> getVenueListing(VenueSearchInfo venueSearchInfo) {
	
	return venueManager.geVenueData(venueSearchInfo);
    }

    
}
