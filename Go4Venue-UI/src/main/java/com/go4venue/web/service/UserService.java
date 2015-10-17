package com.go4venue.web.service;

import com.go4venue.web.core.beans.LoginInfo;
import com.go4venue.web.persistence.beans.User;

public interface UserService {
    
    public void saveUser(User user);

    public boolean isValidUser(LoginInfo loginInfo);

    public User getUser(LoginInfo loginInfo);

}
