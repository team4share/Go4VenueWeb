package com.go4venue.web.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.go4venue.web.controller.ApplicationController;
import com.go4venue.web.dao.VenueUrlDao;
import com.go4venue.web.persistence.beans.VenueURL;

@Transactional
@Repository
public class VenueUrlDaoImpl extends CommonDBDao implements VenueUrlDao{
    private Logger LOG = Logger.getLogger(VenueUrlDaoImpl.class);
    
    @Override
    public List<VenueURL> getVenueURLs() {
	String query = "Select * from venue_url";
	List venueUrls =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("venueUrls").list();
	LOG.info("Total URL : "+venueUrls);
	return venueUrls;
    }
}
