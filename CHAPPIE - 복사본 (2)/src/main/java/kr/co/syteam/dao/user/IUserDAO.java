package kr.co.syteam.dao.user;

import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;

public interface IUserDAO {

	public int userJoin(UserDTO userDTO) throws Exception;
	public LoginVO userLogin(UserDTO userDTO) throws Exception;
	public String userIdCheck(String userid) throws Exception;
	public int userModify(UserDTO userDTO) throws Exception;
	public int userDelete(String userid) throws Exception;
}
