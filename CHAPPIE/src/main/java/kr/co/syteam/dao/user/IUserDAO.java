package kr.co.syteam.dao.user;

import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;

public interface IUserDAO {

	public int userJoin(UserDTO userDTO) throws Exception;
	public LoginVO userLogin(UserDTO userDTO) throws Exception;
	public String userIdCheck(String userid) throws Exception;
	public int userModify(UserDTO userDTO) throws Exception;
	public int userDelete(String user_id) throws Exception;
	public int userCategoryMemberDelete(String member_nickname) throws Exception;
	public int userTodoMemberDelete(String member_nickname) throws Exception;
	public int userPwCheck(UserDTO userDTO) throws Exception;
}
