package jbr.springmvc.service;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;

import org.springframework.beans.factory.annotation.Autowired;

import jbr.springmvc.dao.UserDaoImpl;
public class UserServiceImpl implements UserService {
	@Autowired
  UserDaoImpl userdao;
  public void register(User user) {
	  userdao.createUser(user);  
    }
  public User validateUser(Login login) {
      return userdao.findIfExists(login);
    }
  }
