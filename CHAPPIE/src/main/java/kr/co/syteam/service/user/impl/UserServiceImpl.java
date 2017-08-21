package kr.co.syteam.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.user.IUserDAO;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.user.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDAO userDAO;
	
	@Override
	public int userJoin(UserDTO userDTO) throws Exception {
		return userDAO.userJoin(userDTO);
	}

	@Override
	public LoginVO userLogin(UserDTO userDTO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.userLogin(userDTO);
	}

	@Override
	public String userIdCheck(String userid) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.userIdCheck(userid);
	}

	@Override
	public int userModify(UserDTO userDTO) throws Exception {
		return userDAO.userModify(userDTO);
	}

	@Override
	public int userDelete(String user_id, String member_nickname) throws Exception {
		userDAO.userCategoryMemberDelete(member_nickname);
		userDAO.userTodoMemberDelete(member_nickname);
		return userDAO.userDelete(user_id);
	}

	@Override
	public int userPwCheckService(UserDTO userDTO) throws Exception {
		return userDAO.userPwCheck(userDTO);
	}


}
