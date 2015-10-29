package com.go4venue.web.dao;

import java.util.List;

import com.go4venue.web.persistence.beans.City;
import com.go4venue.web.persistence.beans.Occasion;

public interface ApplicationDao {
    
    public List<Occasion>getOccasions();

    public List<City> getCities();

    public String getPageTitle(String title);

}
