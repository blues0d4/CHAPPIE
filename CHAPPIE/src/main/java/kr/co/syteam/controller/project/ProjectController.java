package kr.co.syteam.controller.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.exceptions.ErrorInfo;
import kr.co.syteam.exceptions.ProjectNotFoundException;
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
		logger.info("doProjectView");
		
		ProjectVO projectVO = projectService.projectSelect(project_name);
		if(projectVO == null){
			return URIs.URI_MAIN_REDIRECT;
		}
		System.out.println(projectVO);
		
		return URIs.URI_PROJECT_MAIN_FULL;
	}
	
	@RequestMapping(value = URIs.URI_PROJECT_CREATE_FORM)
	public String doProjectCreateForm() throws Exception{
		logger.info("doProjectCreateForm");
		
		
		return URIs.URI_PROJECT_CREATE_FORM_FULL;
	}
	
	@RequestMapping(value = URIs.URI_PROJECT_CREATE)
	public String doProjectCreate(ProjectDTO projectDTO, HttpServletRequest request) throws Exception{

		logger.info("doProjectCreate");
		projectService.projectManagerInsert(projectDTO, request);
		return URIs.URI_MAIN_REDIRECT;
	}

	@RequestMapping(value = URIs.URI_PROJECT_LIST)
	public String doProjectList(Model model, HttpServletRequest request) throws Exception{
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		logger.info("doProjectList");
		List<ProjectVO> projectList = projectService.projectList(user_id);
		model.addAttribute("projectList", projectList);
		return URIs.URI_PROJECT_LIST_FULL;
	}
	
}
