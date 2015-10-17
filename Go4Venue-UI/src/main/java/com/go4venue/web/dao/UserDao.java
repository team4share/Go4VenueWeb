package com.go4venue.web.dao;

import com.go4venue.web.persistence.beans.User;

public interface UserDao {
    
    public void saveUserRegistrationInformation(User user);
    public User getUser(String userName, String password);


}
