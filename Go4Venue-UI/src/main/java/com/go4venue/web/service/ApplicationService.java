package com.go4venue.web.service;

import java.util.List;

import com.go4venue.web.persistence.beans.City;
import com.go4venue.web.persistence.beans.Occasion;

public interface ApplicationService {
    public void getPropertyByName(String name);

    public void saveImages();

    public List<Occasion> getOccasions();

    public List<City> getCities();
}
