package kr.co.syteam.controller.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.project.ProjectService;

//"/{project}"
@Controller
public class ProjectController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@Autowired
	private ProjectService projectService;
	
	//ProjectMain (미완성)
	@RequestMapping(value = "/{project_name}")
	public String doProjectView(@PathVariable("project_name") String project_name, Model model)throws Exception{
//		BoardVO boardVO = boardService.boardView(board_no);
//		
//		if(boardVO == null){
//			return "redirect:/"; //해당 project_id가 없을 경우 페이지가 없습니다.
//		}
//		model.addAttribute("board", boardVO);
		
		ProjectVO projectVO = projectService.projectSelect(project_name);

		logger.info("doProjectView");
		System.out.println(projectVO);
		
		return "project/projectMain";
	}
	
	@RequestMapping(value = "/projectCreateForm")
	public String doProjectCreateForm() throws Exception{
		logger.info("doProjectCreateForm");
		
		
		return "project/projectCreateForm";
	}
	
	@RequestMapping(value = "/projectCreate")
	public String doProjectCreate(ProjectDTO projectDTO, HttpServletRequest request) throws Exception{

		logger.info("doProjectCreate");
		projectService.projectManagerInsert(projectDTO, request);
		return "redirect:/";
	}

	@RequestMapping(value = "/projectList")
	public String doProjectList(Model model, HttpServletRequest request) throws Exception{
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		logger.info("doProjectList");
		List<ProjectVO> projectList = projectService.projectList(user_id);
		model.addAttribute("projectList", projectList);
		return "project/projectList";
	}
}
