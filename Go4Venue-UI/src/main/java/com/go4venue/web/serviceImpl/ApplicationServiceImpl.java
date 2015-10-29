package com.go4venue.web.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.go4venue.web.dao.ApplicationDao;
import com.go4venue.web.persistence.beans.City;
import com.go4venue.web.persistence.beans.Occasion;
import com.go4venue.web.service.ApplicationService;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Autowired
    private ApplicationDao applicationDao;
    @Override
    public void getPropertyByName(String name) {
	// TODO Auto-generated method stub
    }
    @Override
    public void saveImages() {
	try {
	    // collectImages.getAllImages();
	} catch (Exception e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	}
    }
    @Override
    public List<Occasion> getOccasions() {
	return applicationDao.getOccasions();
    }
    @Override
    public List<City> getCities() {
	return applicationDao.getCities();
    }
    @Override
    public String getPageTitle(String title) {
	
	return applicationDao.getPageTitle(title);
    }

}
