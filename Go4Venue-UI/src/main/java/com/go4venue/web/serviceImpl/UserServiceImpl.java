package com.go4venue.web.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.go4venue.web.core.beans.LoginInfo;
import com.go4venue.web.dao.UserDao;
import com.go4venue.web.persistence.beans.User;
import com.go4venue.web.service.UserService;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    @Override
    public void saveUser(User user) {
	System.out.println("User info saved "+ user.getEmail());
	userDao.saveUserRegistrationInformation(user);
    }
    @Override
    public boolean isValidUser(LoginInfo loginInfo) {
	return userDao.getUser(loginInfo.getEmail(), loginInfo.getPassword())!=null?true:false;
    }
    @Override
    public User getUser(LoginInfo loginInfo) {
	return userDao.getUser(loginInfo.getEmail(), loginInfo.getPassword());
    }
}
