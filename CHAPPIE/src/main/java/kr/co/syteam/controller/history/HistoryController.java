package kr.co.syteam.controller.history;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.syteam.domain.history.vo.HistoryVO;
import kr.co.syteam.service.history.HistoryService;

@Controller
public class HistoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(HistoryController.class);
	
	@Autowired
	private HistoryService historyService;
	
	@RequestMapping(value = "/project/{project_id}/history", method = RequestMethod.GET)
	public String todoList(@PathVariable("project_id") String project_id, Model model, HttpServletRequest request) throws Exception {
		logger.info("This is History !!!!");	
		
		List<HistoryVO> vo = historyService.historySelectService();
		System.out.println(vo.get(0).toString());
		model.addAttribute("HistoryVO", vo);

		return "/history/history";
	}	
}  
