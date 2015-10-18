package com.go4venue.web.serviceImpl;

import org.springframework.stereotype.Service;

import com.go4venue.web.dao.EventDao;
import com.go4venue.web.persistence.beans.Event;
import com.go4venue.web.service.EventService;

@Service
public class EventServiceImpl implements EventService{
    private EventDao eventDao;
    @Override
    public void createEvent(Event event) {
	eventDao.saveNewEvent(event);
    }
}
