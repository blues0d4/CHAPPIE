package kr.co.syteam.controller.project;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	
	//ProjectMain (미완성)
	@RequestMapping(value = "{project_id}")
	public String doProjectMain(@PathVariable("project_id") String project_id, Model model)throws Exception{
//		BoardVO boardVO = boardService.boardView(board_no);
//		
//		if(boardVO == null){
//			return "redirect:/"; //해당 project_id가 없을 경우 페이지가 없습니다.
//		}
//		model.addAttribute("board", boardVO);
		return "project/projectView";
	}
}
