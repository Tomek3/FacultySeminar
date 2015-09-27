/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package service;

import DAO.IUserDAO;
import User.LoginData;
import User.LoginWrapper;
import User.User;
import java.util.ArrayList;

/**
 *
 * @author Tomek
 */
public class UniversalService {
    IUserDAO userDAO;
    
    public IUserDAO getUserDAO() {
        return userDAO;
    }
    
    public void setUserDAO(IUserDAO userDAO) {
        this.userDAO = userDAO;
    }
    
    //USER
    public void addUser(User user) {
        userDAO.addUser(user);
    }
    
    public void editUser(User user){
        userDAO.editUser(user);
    }
    
    public void removeUserByPesel(String userPesel){
        userDAO.removeUserByPesel(userPesel);
    }
    
    public User getUser(User user) {
        if (user != null) {
            //User user = getUser(user);
            return userDAO.getUser(user.getPesel());
        }
        return null;
    }
    
    
    public User getUser(String pesel){
        return userDAO.getUser(pesel);
    }
    
    
    public ArrayList<User> getAllUsers(){
        return userDAO.getAllUsers();
    }
    
    public Boolean loginAvailable(String userPesel){
        return userDAO.loginAvailable(userPesel);
    }
    
    
    public LoginWrapper login(LoginData login_data){
        User user = getUser(login_data.getPesel());
        LoginWrapper lw = new LoginWrapper(user, login_data);
        lw.check();
        
        return lw;
    }
}
