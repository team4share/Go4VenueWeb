package com.go4venue.web.serviceImpl;

import org.springframework.stereotype.Service;

import com.go4venue.web.service.ApplicationService;
@Service
public class ApplicationServiceImpl implements ApplicationService{
    
    
    
    @Override
    public void getPropertyByName(String name) {
	// TODO Auto-generated method stub
	
    }

    @Override
    public void saveImages() {
	try {
	    //collectImages.getAllImages();
	} catch (Exception e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	}
    }

}
