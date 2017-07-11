package kr.co.syteam.controller.chart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.service.todo.TodoService;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChartController.class);
	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value = "/progress", method = RequestMethod.GET)
	public String todoList(Model model, HttpServletRequest request) throws Exception {
		logger.info("This is Progress Chart !!!!");		
		
		
		
		

		return "/chart/chart";
	}	
}  
