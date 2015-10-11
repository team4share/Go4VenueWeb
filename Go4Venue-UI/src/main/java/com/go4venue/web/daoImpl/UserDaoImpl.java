package com.go4venue.web.daoImpl;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
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
}
