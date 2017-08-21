package kr.co.syteam.dao.user.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.user.IUserDAO;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;

@Repository
public class UserDAOImpl implements IUserDAO{
 
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.syteam.mapper.UserMapper.";
	
	@Override
	public int userJoin(UserDTO userDTO) throws Exception {
		return sqlSession.insert(namespace+"userJoin", userDTO);

	}

	@Override
	public LoginVO userLogin(UserDTO userDTO) throws Exception {
		return sqlSession.selectOne(namespace+"userLogin", userDTO);
	}

	@Override
	public String userIdCheck(String userid) throws Exception {
		return sqlSession.selectOne(namespace+"userIdCheck", userid);
	}

	@Override
	public int userModify(UserDTO userDTO) throws Exception {
		return sqlSession.update(namespace+"userModify", userDTO);
	}

	@Override
	public int userDelete(String user_id) throws Exception {
		return sqlSession.delete(namespace+"userDelete", user_id); 
	}

	@Override
	public int userCategoryMemberDelete(String member_nickname) throws Exception {
		return sqlSession.delete(namespace+"userCategoryMemberDelete", member_nickname);
	}

	@Override
	public int userTodoMemberDelete(String member_nickname) throws Exception {
		return sqlSession.delete(namespace+"userTodoMemberDelete", member_nickname);
	}

	@Override
	public int userPwCheck(UserDTO userDTO) throws Exception {
		return sqlSession.selectOne(namespace+"userPwCheck", userDTO);
	}


	

}
