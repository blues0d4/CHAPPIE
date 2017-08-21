package kr.co.syteam.controller.user;

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

	// 회원가입 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_JOIN_FORM)
	// @RequestMapping(value = "/joinform")
	public String doUserJoinForm() throws Exception {

		// return "/user/userJoin";
		logger.info("doUserJoinForm");
		return URIs.URI_USER_JOIN_FORM_PAGE;
	}

	// 회원가입 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_JOIN)
	public String doUserJoin(Model model, UserDTO userDTO) throws Exception {
		int joinResult = userService.userJoin(userDTO);

		System.out.println(joinResult);

		logger.info("doUserJoin");
		return "redirect:"+URIs.URI_USER_LOGIN_FORM;
		// return URIs.URI_JOINUSER_FULL;
	}

	// 로그인 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGIN_FORM)
	// @RequestMapping(value = "/joinform")
	public String doUserLoginForm() throws Exception {

		// return "/user/userJoin";
		logger.info("doUserLoginForm");
		return URIs.URI_USER_LOGIN_FORM_PAGE;
	}

	// 로그인 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGIN, method = RequestMethod.POST)
	public String doUserLogin(Model model, UserDTO userDTO) throws Exception {
		LoginVO loginVO = userService.userLogin(userDTO);
		model.addAttribute("login", loginVO);

		logger.info("doUserLogin");

//		System.out.println("loginId : " + loginVO.getUser_id());
//		System.out.println("loginName : " + loginVO.getUser_name());
//		System.out.println("loginDate : " + loginVO.getLogindate());
		
		
		
//		return URIs.URI_MAIN_REDIRECT;
		return "redirect:"+URIs.URI_PROJECT_LIST;
	}

	// 회원정보 수정 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_MODIFY_FORM)
	public String doUserModifyForm() throws Exception {

		// return "/user/userJoin";
		logger.info("doUserModifyForm");
		
		
		return URIs.URI_USER_MODIFY_FORM_PAGE;
	}

	// 회원정보 수정 (테스트 미완료)
	@RequestMapping(value = URIs.URI_USER_MODIFY, method = RequestMethod.POST)
	public String doUserModify(Model model, UserDTO userDTO) throws Exception {

		userService.userModify(userDTO);

		logger.info("doUserModify");
		return "redirect:"+URIs.URI_MAIN;
	}

	// 로그아웃 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGOUT)
	public String doUserLogout(HttpServletRequest request) {

		logger.info("doUserLogout");
		
		request.getSession().invalidate();
		return "redirect:"+URIs.URI_MAIN;
	}
	
	@RequestMapping(value="/idCheck", method=RequestMethod.GET)
	@ResponseBody
	public LoginVO idCheck(String user_id) throws Exception{		
		
		System.out.println("Join ID CHECK !!!!!!!!!!!!!!!!!");
		LoginVO loginVO = new LoginVO();
		loginVO.setUser_id(userService.userIdCheck(user_id));
		System.out.println(loginVO.getUser_id());
		
		return loginVO;
	}
	
	@RequestMapping(value="/pwCheck", method=RequestMethod.GET)
	@ResponseBody
	public int pwCheck(String user_pw, HttpServletRequest request) throws Exception{		
		
		System.out.println("Join PW CHECK !!!!!!!!!!!!!!!!!");
		LoginVO loginVO = new LoginVO();
		UserDTO userDTO = new UserDTO();
		loginVO = (LoginVO)request.getSession().getAttribute("login");
		userDTO.setUser_id(loginVO.getUser_id());
		userDTO.setUser_pw(user_pw);
		int result=userService.userPwCheckService(userDTO);
		System.out.println("결과 : " + result);
		
		return result;
	}

	@RequestMapping(value = "/userDelete")
	public String doUserDelete(HttpServletRequest request) throws Exception {
		System.out.println("UserDELETE");
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		
		System.out.println(loginVO.getUser_id()+","+ loginVO.getUser_name());
		userService.userDelete(loginVO.getUser_id(), loginVO.getUser_name());
		request.getSession().invalidate();
		
		return "redirect:"+URIs.URI_MAIN;
	}
	
	//유저 수정 비밀번호 체크
	@RequestMapping(value = URIs.URI_USER_MODIFY_CONFIRM_FORM)
	public String doUserModifyConfirmForm() throws Exception{
		
		return URIs.URI_USER_MODIFY_CONFIRM_FORM_PAGE;
	}
	
}
