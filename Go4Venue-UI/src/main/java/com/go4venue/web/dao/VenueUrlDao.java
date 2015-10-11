package com.go4venue.web.dao;

import java.util.List;

import com.go4venue.web.persistence.beans.VenueURL;

public interface VenueUrlDao {
    public List<VenueURL> getVenueURLs();
}
