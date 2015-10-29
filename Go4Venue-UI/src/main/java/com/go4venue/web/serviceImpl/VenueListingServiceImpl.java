/**
 * 
 */
package com.go4venue.web.serviceImpl;

import java.util.List;
import java.util.stream.Collector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.dao.VenueManagerDao;
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.service.VenueListingService;

/**
 * @author rohitkumar
 *
 */
@Service
public class VenueListingServiceImpl implements VenueListingService {

    @Autowired
    private VenueManagerDao venueManagerDao;
    @Override
    public List<VenueRaw> getVenueListing(VenueSearchInfo venueSearchInfo) {
	
	return venueManagerDao.geVenueData(venueSearchInfo);
    }
    @Override
    public List<String> getAmenities() {
	List<Amenities>amenities = venueManagerDao.getAmenities();
	//List<String>amenitiesNames = amenities.stream().map(->).collect(toList());
	return null;
    }
}
