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

import kr.co.syteam.commons.URIs;
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
	
	//프로젝트 메인
	//프로젝트 선택
	@RequestMapping(value = "/{project_name}")
	public String doProjectView(@PathVariable("project_name") String project_name, Model model, HttpServletRequest request)throws Exception{
	
		logger.info("doProjectView");
		
		ProjectVO projectVO = projectService.projectSelect(project_name);
		if(projectVO == null){
			return URIs.URI_MAIN_REDIRECT;
		}
//		model.addAttribute("project", projectVO);
		request.getSession().setAttribute("project", projectVO);
		System.out.println(projectVO);
		
		return URIs.URI_PROJECT_MAIN_FULL;
	}
	
	//프로젝트 생성 폼
	@RequestMapping(value = URIs.URI_PROJECT_CREATE_FORM)
	public String doProjectCreateForm() throws Exception{
		
		logger.info("doProjectCreateForm");
		
		
		return URIs.URI_PROJECT_CREATE_FORM_FULL;
	}
	
	//프로젝트 생성
	@RequestMapping(value = URIs.URI_PROJECT_CREATE)
	public String doProjectCreate(ProjectDTO projectDTO, HttpServletRequest request) throws Exception{

		logger.info("doProjectCreate");
		
		projectService.projectManagerInsert(projectDTO, request);
		return URIs.URI_MAIN_REDIRECT;
	}
	
	//프로젝트 리스트
	@RequestMapping(value = URIs.URI_PROJECT_LIST)
	public String doProjectList(Model model, HttpServletRequest request) throws Exception{
		
		logger.info("doProjectList");
		
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		List<ProjectVO> projectList = projectService.projectList(user_id);
		System.out.println(projectList);
//		model.addAttribute("projectList", projectList);
		request.getSession().setAttribute("projectList", projectList);
		return URIs.URI_PROJECT_LIST_FULL;
 
	}
	
}
