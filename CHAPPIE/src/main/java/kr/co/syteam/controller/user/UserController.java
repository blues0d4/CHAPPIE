package kr.co.syteam.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

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
		return URIs.URI_USER_JOIN_FORM_FULL;
	}

	// 회원가입 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_JOIN, method = RequestMethod.POST)
	public String doUserJoin(Model model, UserDTO userDTO) throws Exception {
		int joinResult = userService.userJoin(userDTO);

		System.out.println(joinResult);

		logger.info("doUserJoin");
		return URIs.URI_MAIN_REDIRECT;
		// return URIs.URI_JOINUSER_FULL;
	}

	// 로그인 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGIN_FORM)
	// @RequestMapping(value = "/joinform")
	public String doLoginForm() throws Exception {

		// return "/user/userJoin";
		logger.info("doLoginForm");
		return URIs.URI_USER_LOGIN_FORM_FULL;
	}

	// 로그인 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGIN, method = RequestMethod.POST)
	public String doLogin(Model model, UserDTO userDTO) throws Exception {
		LoginVO loginVO = userService.userLogin(userDTO);
		model.addAttribute("login", loginVO);

		logger.info("doLogin");

		System.out.println("loginId : " + loginVO.getUser_id());
		System.out.println("loginName : " + loginVO.getUser_name());
		System.out.println("loginDate : " + loginVO.getLogindate());
		return URIs.URI_MAIN_REDIRECT;
	}

	// 회원정보 수정 폼 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_MODIFY_FORM)
	public String doModifyForm() throws Exception {

		// return "/user/userJoin";
		logger.info("doModifyForm");
		return URIs.URI_USER_MODIFY_FORM_FULL;
	}

	// 회원정보 수정 (테스트 미완료)
	@RequestMapping(value = URIs.URI_USER_MODIFY, method = RequestMethod.POST)
	public String doModify(Model model, UserDTO userDTO) throws Exception {

		int modifyResult = userService.userModify(userDTO);

		logger.info("doModify");
		return URIs.URI_MAIN_REDIRECT;
	}

	// 로그아웃 (테스트 완료)
	@RequestMapping(value = URIs.URI_USER_LOGOUT)
	public String doLogout(HttpServletRequest request) {

		logger.info("doLogout");
		
		request.getSession().invalidate();
		return URIs.URI_MAIN_REDIRECT;
	}

}
