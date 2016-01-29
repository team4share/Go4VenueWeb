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
import com.go4venue.web.persistence.beans.Amenities;
import com.go4venue.web.persistence.beans.GuestRange;
import com.go4venue.web.persistence.beans.Locality;
import com.go4venue.web.persistence.beans.Venue;
import com.go4venue.web.persistence.beans.VenueType;

/**
 * @author Rohit Chhonker
 *
 */

@Transactional
@Repository
@SuppressWarnings("unchecked")
public class VenueManagerDaoImpl extends CommonDBDao implements VenueManagerDao {

    @Override
    public List<Venue> geVenueData(VenueSearchInfo venueSearchInfo) {
	String query = "select * from venue";
	SQLQuery venueMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("venue");
	List<Venue> venues = venueMappedQuery.list();
	return venues != null && venues.size() > 0 ? venues : null;
    }

    @Override
    public List<Amenities> getAmenities() {
	String query = "select * from amenities";
	SQLQuery amenitiesMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("amenities");
	List<Amenities> amenities = amenitiesMappedQuery.list();
	System.out.println(amenities.size());
	return amenities != null && amenities.size() > 0 ? amenities : null;
    }

    @Override
    public List<GuestRange> getExpectedGuestsRange() {
	String query = "select * from guest_range";
	SQLQuery guestMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("guestRange");
	List<GuestRange> guestRange = guestMappedQuery.list();
	return guestRange != null && guestRange.size() > 0 ? guestRange : null;
    }

    @Override
    public List<VenueType> getVenueTypes() {
	String query = "select * from venue_type";
	SQLQuery venueTypeMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("venueType");
	List<VenueType> venueTypes = venueTypeMappedQuery.list();
	return venueTypes != null && venueTypes.size() > 0 ? venueTypes : null;
    }

    @Override
    public List<Locality> getLocalities(long cityId) {
	String query = "select * from locality where city_id = "+cityId;
	SQLQuery localityMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("locality");
	List<Locality> localities = localityMappedQuery.list();
	return localities != null && localities.size() > 0 ? localities : null;
    }

    @Override
    public Venue getVenueById(long venueId) {
	String query = "Select * from venue where id = "+venueId;
	SQLQuery venueMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("venue");
	return venueMappedQuery.list() != null && venueMappedQuery.list().size() > 0 ? (Venue)venueMappedQuery.list().get(0) : null;
    }
    
    @Override
    public List<String> getVenueImages(long venueId) {
	String query = "select path from venue_images where venue_id"+venueId;
	return null;
    }

    @Override
    public Amenities getAmenityByCode(String code) {
	String query = "Select * from amenities where code = '"+code+"'";
	SQLQuery venueMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("amenities");
	return venueMappedQuery.list() != null && venueMappedQuery.list().size() > 0 ? (Amenities)venueMappedQuery.list().get(0) : null;
    }

    @Override
    public Amenities getAminitiesById(int id) {
	String query = "Select * from amenities where code = '"+id+"'";
	SQLQuery venueMappedQuery = getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("amenities");
	return venueMappedQuery.list() != null && venueMappedQuery.list().size() > 0 ? (Amenities)venueMappedQuery.list().get(0) : null;
    }
	
}
