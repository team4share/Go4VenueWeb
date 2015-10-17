package com.go4venue.web.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.go4venue.web.dao.UserDao;
import com.go4venue.web.persistence.beans.User;

@Transactional
@Repository
public class UserDaoImpl extends CommonDBDao implements UserDao {
    private Logger LOG = Logger.getLogger(UserDaoImpl.class);
   
    @Override
    public void saveUserRegistrationInformation(User user) {
	System.out.println(user.getEmail());
	Session session = getSessionFactory().openSession();
	Transaction transaction = session.beginTransaction();
	Integer id = (Integer) session.save("user", user);
	transaction.commit();
	session.close();
    }
    
    @Override
    public User getUser(String email, String password)
    {
	String query = "Select * from user where email = :email and password = :password";
	SQLQuery userMappedQuery =  getSessionFactory().getCurrentSession().createSQLQuery(query).addEntity("user");
	userMappedQuery.setParameter("email", email);
	userMappedQuery.setParameter("password", password);
	@SuppressWarnings("unchecked")
	List<User>users = userMappedQuery.list();
	return users!=null && users.size()>0 ?users.get(0) :null;
    }
}
