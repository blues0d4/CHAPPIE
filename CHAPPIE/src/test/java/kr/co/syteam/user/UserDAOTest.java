package kr.co.syteam.user;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.dao.user.IUserDAO;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDAOTest {
	@Autowired
	private IUserDAO userDAO;
	
	//회원가입 테스트(완료)
//	@Test
//	public void testUserJoin() throws Exception{
//		UserDTO userVO = new UserDTO();
//		userVO.setUser_id("testId");
//		userVO.setUser_pw("testpw");
//		userVO.setUser_name("testName");
//		userVO.setUser_phone("testphone");
//		
//		userDAO.userJoin(userVO);
//	}
	
	//로그인 테스트(테스트 완료)
		@Test
		public void loginUser() throws Exception{
			UserDTO userDTO = new UserDTO();
			userDTO.setUser_id("testId");
			userDTO.setUser_pw("testpw");
			LoginVO loginVO = userDAO.userLogin(userDTO);
			
			System.out.println("loginId : " + loginVO.getUserid());
			System.out.println("loginName : " + loginVO.getUsername());
			System.out.println("loginDate : " + loginVO.getLogindate());
		}
	
}
