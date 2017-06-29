package kr.co.syteam.user;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.dao.user.IUserDAO;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.service.user.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserServiceTest {
	@Autowired
	private IUserDAO userDAO;
	
	@Autowired
	private IUserService userService;
	
	//회원가입 테스트(완료)
//	@Test
//	public void testUserJoin() throws Exception{
//		UserDTO userVO = new UserDTO();
//		userVO.setUser_id("testId");
//		userVO.setUser_pw("testpw");
//		userVO.setUser_name("testName");
//		userVO.setUser_phone("testphone");
//		
//		userService.userJoin(userVO);
//	}
	
	//로그인 테스트(완료)
//		@Test
//		public void loginUser() throws Exception{
//			UserDTO userDTO = new UserDTO();
//			userDTO.setUser_id("testId");
//			userDTO.setUser_pw("testpw");
//			LoginVO loginVO = userService.userLogin(userDTO);
//			
//			System.out.println("loginId : " + loginVO.getUser_id());
//			System.out.println("loginName : " + loginVO.getUser_name());
//			System.out.println("loginDate : " + loginVO.getLogindate());
//		}
		
		//IdCheck 테스트
//		@Test
//		public void userIdCheck() throws Exception{
//			String userid = "stan";
//			String result = userService.userIdCheck(userid);
//			
//			System.out.println(result);
//		}
	
		//유저 정보 수정 (테스트 완료)
		@Test
		public void userModify() throws Exception{
			UserDTO userDTO = new UserDTO();
			userDTO.setUser_id("123");
			userDTO.setUser_pw("test2");
			userDTO.setUser_name("test2");
			userDTO.setUser_phone("test2");
			
			int result = userService.userModify(userDTO);
			System.out.println(result);
		}
		
//		@Test
//		public void userDelete() throws Exception{
//			String userid = "stan";
//			int result = userService.userDelete(userid);
//			
//			System.out.println(result);
//		}
//		
	
}
