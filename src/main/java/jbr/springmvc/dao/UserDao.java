package jbr.springmvc.dao;
import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
public interface UserDao {
  void createUser(User user);
  User findIfExists(Login login);
}
