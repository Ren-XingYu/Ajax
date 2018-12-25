package x.y.servlet.service;

import x.y.servlet.dao.UserDao;
import x.y.servlet.dao.UserDaoImpl;

public class Userservice {
    private UserDao userDao=new UserDaoImpl();

    public boolean checkUsername(String username){
        return userDao.checkUsername(username);
    }
}
