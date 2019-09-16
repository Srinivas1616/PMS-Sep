package com.msg.psm.RegUser;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import Repository.UserRepository;

@Service
@Transactional
public class UserService {

	private final UserRepository userRepository;
	 
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public void saveMyUser(UserModel user) {
		 userRepository.save(user);     	   
	}
	
	public List<UserModel> showAllUsers(){
		List<UserModel> users = new ArrayList<UserModel>();
		for(UserModel user: userRepository.findAll()) {
			users.add(user); 
		}
		return users;
	}
	
	public void deleteMyUser(int id) {
		 userRepository.deleteById(id);
	}
	
	public Optional<UserModel> editUser(int id) {
		UserModel user= new UserModel();
		Optional<UserModel> user1=userRepository.findById(id);
		return user1;
	}
	
	public void updateUser(int id, String username, String firstname, String lastname, int age) {
		UserModel oldUser = userRepository.findById(id).get();
		oldUser.setFirstname(username);
		oldUser.setFirstname(firstname);
		oldUser.setLastname(lastname);
		oldUser.setAge(age);
		userRepository.save(oldUser);
		
	}
	
	public UserModel findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
}
