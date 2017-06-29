package kr.co.syteam.controller.user;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.user.IUserService;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private IUserService userService;

	//회원가입 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_JOIN_FORM)
//	@RequestMapping(value = "/joinform")
	public String doUserJoinForm() throws Exception {
		
//		return "/user/userJoin";
		logger.info("doUserJoinForm");
		return URIs.URI_USER_JOIN_FORM_FULL;
	}
	
	//회원가입 (테스트 미완료)
	@RequestMapping(value = URIs.URI_USER_JOIN, method = RequestMethod.POST)
	public String doUserJoin(Model model, UserDTO userDTO) throws Exception {
		int joinResult = userService.userJoin(userDTO);
		
		System.out.println(joinResult);
		
		logger.info("doUserJoin");
		return "redirect:/";
//		return URIs.URI_JOINUSER_FULL;
	}
	
	//로그인 폼 (테스트 완료)
		@RequestMapping(value = URIs.URI_USER_LOGIN_FORM)
//		@RequestMapping(value = "/joinform")
		public String doLoginForm() throws Exception {
			
//			return "/user/userJoin";
			logger.info("doLoginForm");
			return URIs.URI_USER_LOGIN_FORM_FULL;
		}
	
	//로그인 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGIN, method = RequestMethod.POST)
	public String doLogin(Model model, UserDTO userDTO) throws Exception {
		LoginVO loginVO = userService.userLogin(userDTO);
		model.addAttribute("login", loginVO);

		logger.info("doLogin");
		
		
		System.out.println("loginId : " + loginVO.getUser_id());
		System.out.println("loginName : " + loginVO.getUser_name());
		System.out.println("loginDate : " + loginVO.getLogindate());
		
		return "redirect:/";
	}
	
	//로그아웃 (테스트 미완료)  
	@RequestMapping(value = "/logout")
	public String doLogout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/userIdCheck", method=RequestMethod.GET)
	@ResponseBody
	public LoginVO doUserIdCheck(UserDTO userDTO, Model model) throws Exception{
	      LoginVO loginVO = new LoginVO();
	      String checkResult = userService.userIdCheck(userDTO.getUser_id());
	      loginVO.setUser_id(checkResult);
	      System.out.println("test");
	      return loginVO;
	   }
}
