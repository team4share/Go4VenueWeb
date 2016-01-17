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
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.Venue;
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
    public List<Venue> getVenueListing(VenueSearchInfo venueSearchInfo) {
	List<Venue>venues = venueManagerDao.geVenueData(venueSearchInfo);
	for(Venue venue : venues) {
	    Amenities aminity = venueManagerDao.getAmenityByCode(venue.getAmenities());
	   //  getAmenityString(aminity.getCode()); 
	   // set this in venue.setAmenities(amenities);
	    venue.setAmenities("Parking,Alcohol,Wi-Fi");
	}
	return venues;
    }
    
    private String getAmenityString(String code) {
	
	//long id = String.
	return null;
	
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
    @Override
    public List<Locality> getLocalities(long cityId) {
	return venueManagerDao.getLocalities(cityId);
    }
}
