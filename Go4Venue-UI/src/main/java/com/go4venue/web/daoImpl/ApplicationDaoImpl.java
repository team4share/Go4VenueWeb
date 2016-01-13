package com.go4venue.web.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.go4venue.web.dao.ApplicationDao;
import com.go4venue.web.persistence.beans.City;
import com.go4venue.web.persistence.beans.Occasion;

@Transactional
@Repository
public class ApplicationDaoImpl extends CommonDBDao implements ApplicationDao {

    @SuppressWarnings("unchecked")
    @Override
    public List<Occasion> getOccasions() {
	String query = "select * from occasion";
	List<Occasion>occasions = getSessionFactory().openSession().createSQLQuery(query).addEntity("occasion").list();
	return occasions;
    }

    @Override
    public List<City> getCities() {
	String query = "select * from city";
	@SuppressWarnings("unchecked")
	List<City>cities = getSessionFactory().openSession().createSQLQuery(query).addEntity("city").list();
	//System.out.println("cities" +cities.size());
	return cities;
    }

    @Override
    public String getPageTitle(String title) {
	String query = "select title from page_info where url = '"+title+"'";
	@SuppressWarnings("unchecked")
	List<String> titles = getSessionFactory().openSession().createSQLQuery(query).list();
	return (String) titles.get(0);
    }
}
