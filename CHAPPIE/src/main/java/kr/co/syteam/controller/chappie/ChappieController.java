package kr.co.syteam.controller.chappie;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.domain.chappie.dto.ChappieDTO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.chappie.ChappieService;

@Controller
public class ChappieController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChappieController.class);
	
	@Autowired
	private ChappieService chappieService;
	
	@RequestMapping(value = "/chappie", method = RequestMethod.GET)
	@ResponseBody
	public int todoComplete(ChappieDTO chappieDTO, HttpServletRequest request) throws Exception {
		System.out.println("ChappieTEST!!!!!! : " + chappieDTO.toString());
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");		
		chappieDTO.setUser_id(loginVO.getUser_id());
		
		chappieService.insertChappieLogService(chappieDTO);
		return 1;
	}
	
	@RequestMapping(value = "/chappieOnOff", method = RequestMethod.GET)
	@ResponseBody
	public int chappieOnOff(String onOff, HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("onoff", onOff);
		
		return 1;
	}
}  
