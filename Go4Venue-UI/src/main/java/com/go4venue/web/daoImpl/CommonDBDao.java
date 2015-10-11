package com.go4venue.web.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.go4venue.web.dao.BaseDBDao;

public class CommonDBDao implements BaseDBDao {

    @Autowired
    private SessionFactory sessionFactory;

    public CommonDBDao() {
	super();
    }

    public SessionFactory getSessionFactory() {
	return sessionFactory;
    }
}
