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
	    System.out.println(venue.getAmenities());
	    //Amenities aminity = venueManagerDao.getAmenityByCode(venue.getAmenities());
	    venue.setAmenities(getAmenityString(venue.getAmenities()));
	}
	return venues;
    }
    
    private String getAmenityString(String code) {
	char array[] = code.toCharArray();
	int id = 0;
	String css = "";
	for(int i=0;i<array.length;i++) {
	    System.out.println(array[i]);
	    if(array[i]=='1') {
		Amenities amenities = venueManagerDao.getAminitiesById(i+1);
		css = css + amenities.getCss(); 
		if(i<array.length){
		    css = css+",";
		}
	    }
	}
	System.out.println(css);
	return css;
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
