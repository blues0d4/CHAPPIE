package kr.co.syteam.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.service.user.IUserService;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private IUserService userService;

	//회원가입 폼
	@RequestMapping(value = URIs.URI_USER_JOIN_FORM)
//	@RequestMapping(value = "/joinform")
	public String doJoinForm() throws Exception {
		
//		return "/user/userJoin";
		logger.info("JOINUSER_FORM");
		return URIs.URI_USER_JOIN_FORM_FULL;
	}
	
	//회원가입
	@RequestMapping(value = URIs.URI_USER_JOIN)
	public String doUserJoin() throws Exception {

		logger.info("JOINUSER");
		return "/";
//		return URIs.URI_JOINUSER_FULL;
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(Model model, UserDTO userDTO) throws Exception {
//		LoginVO loginVO = userService.loginUser(userDTO);
//		model.addAttribute("login", loginVO);

		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout")
	public String doLogout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
}
