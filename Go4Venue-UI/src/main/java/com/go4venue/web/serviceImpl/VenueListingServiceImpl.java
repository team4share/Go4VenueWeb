/**
 * 
 */
package com.go4venue.web.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.dao.VenueManagerDao;
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.VenueRaw;
import com.go4venue.web.persistence.beans.VenueType;
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
    public List<Amenities> getAmenities() {
	List<Amenities>amenities = venueManagerDao.getAmenities();
	
	return amenities;
    }
    @Override
    public List<VenueType> getVenueTypes() {
   	List<VenueType>venueTypes = venueManagerDao.getVenueTypes();
   	return venueTypes;
       }
}
