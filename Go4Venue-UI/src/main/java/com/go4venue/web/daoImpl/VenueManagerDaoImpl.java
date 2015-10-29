/**
 * 
 */
package com.go4venue.web.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.go4venue.web.core.beans.VenueSearchInfo;
import com.go4venue.web.dao.VenueManagerDao;
import com.go4venue.web.persistence.beans.VenueRaw;

/**
 * @author Rohit Chhonker
 *
 */

@Transactional
@Repository

public class VenueManagerDaoImpl extends CommonDBDao implements VenueManagerDao {

    @Override
    public List<VenueRaw> geVenueData(VenueSearchInfo venueSearchInfo) {
	String query = "select * from venue_raw";
	SQLQuery venueMappedQuery =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("VenueRaw");
	//@SuppressWarnings("unchecked")
	List<VenueRaw>venues = venueMappedQuery.list();
	//System.out.println(venueMappedQuery.list().size());
	return venues!=null && venues.size()>0 ?venues :null;
	//return null;
    }
    @Override
    public List<Amenities> getAmenities() {
    	String query = "select * from amenities";
	SQLQuery amenitiesMappedQuery =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("amenities");
	List<Amenities>amenities = amenitiesMappedQuery.list();
	return amenities!=null && amenities.size()>0 ?amenities :null;
	//return null;
    }
   @Override
   public List<GuestRange> getExpectedGuestsRange() {
	String query = "select * from guest_range";
	SQLQuery guestMappedQuery =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("guestRange");
	List<GuestRange>guestRange = guestMappedQuery.list();
	return guestRange!=null && guestRange.size()>0 ?guestRange :null;	    
   }
   @Override
   public List<VenueType> getVenueType() {
   	String query = "select * from venue_type";
	SQLQuery venueTypeMappedQuery =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("venueType");
	List<VenueType>venueTypes = guestMappedQuery.list();
	return venueTypes!=null && venueTypes.size()>0 ?venueTypes :null;	 
   }
}
