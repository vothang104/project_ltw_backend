package ego.wear.service.impl;

import java.util.List;

import ego.wear.DAO.impl.UserDAO;
import ego.wear.model.UserModel;
import ego.wear.service.IUserService;
import ego.wear.util.MD5Util;

public class UserService implements IUserService {
	public static UserService userService;
	public static UserService getInstance() {
		if(userService == null) {
			userService = new UserService();
		}
		return userService;
	}
	@Override
	public List<UserModel> findAll() {
		return UserDAO.getInstance().findAll();
	}

	@Override
	public UserModel findById(long id) {
		return UserDAO.getInstance().findById(id);
	}

	@Override
	public UserModel insert(UserModel userModel) {
		long id = UserDAO.getInstance().insert(userModel);
		return findById(id);
	}

	@Override
	public UserModel update(UserModel userModel) {
		UserDAO.getInstance().update(userModel);
		return findById(userModel.getId());
	}
	// check user
	@Override
	public UserModel checkUser(String username, String password) {
		return UserDAO.getInstance().checkUser(username, password);
	}
	@Override
	public boolean isUniqueUsername(String username) {
		List<UserModel> listUser = findAll();
		for(UserModel user: listUser) {
			if(user.getUsername().equals(username)) {
				return false;
			}
		}
		return true;
	}
	
	public static void main(String[] args) {
		UserModel user = new UserModel(0, null, null, null, null, "user", MD5Util.getInstance().getMD5("useruser"), "0378192301", "user@gmail.com", 1, 2);
		user = UserService.getInstance().insert(user);
		System.out.println(user.getUsername());
		
	}
	
}
