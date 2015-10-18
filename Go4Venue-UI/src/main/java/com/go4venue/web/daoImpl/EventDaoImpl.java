package com.go4venue.web.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.go4venue.web.dao.EventDao;
import com.go4venue.web.persistence.beans.Event;

@Transactional
@Repository
public class EventDaoImpl extends CommonDBDao implements EventDao {

    @Override
    public void saveNewEvent(Event event) {
	System.out.println(event.getBuggetRange());
	Session session = getSessionFactory().openSession();
	Transaction transaction = session.beginTransaction();
	Integer id = (Integer) session.save("event", event);
	transaction.commit();
	session.close();
    }
}
