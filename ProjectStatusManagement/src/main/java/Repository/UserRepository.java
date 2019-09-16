package Repository; 

import org.springframework.data.repository.CrudRepository;

import com.msg.psm.RegUser.UserModel;

public interface UserRepository extends CrudRepository<UserModel, Integer> {

	public UserModel findByUsernameAndPassword(String username, String password);
	
}
	
