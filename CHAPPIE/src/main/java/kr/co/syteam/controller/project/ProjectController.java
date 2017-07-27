package kr.co.syteam.controller.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.category.dto.CategoryCreateDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.project.ProjectService;
import kr.co.syteam.service.user.IUserService;

//"/{project}"
@Controller
public class ProjectController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private IUserService userService;
	
	//프로젝트 메인
	//프로젝트 선택
	@RequestMapping(value = URIs.URI_PROJECT_MAIN)
	public String doProjectView(@PathVariable("project_id") String project_id, Model model, HttpServletRequest request)throws Exception{
	
		logger.info("doProjectMain");
		
		//로그인이 안되어 있을 때 "main"으로 리턴
//		if(request.getSession().getAttribute("login") == null){
//			return URIs.URI_MAIN_REDIRECT;
//		}

		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_id(project_id);
		projectSelectDTO.setUser_id(user_id);
		
		//선택한 project가 있는지 체크
		ProjectVO projectVO = projectService.projectSelect(projectSelectDTO);
		//없으면 "main"으로 리턴
		if(projectVO == null){
			return "redirect:"+URIs.URI_MAIN;
		}
		
		projectService.projectChoice(projectSelectDTO);
		
//		model.addAttribute("project", projectVO);
		//세션에 선택한 project를 VO로 저장
		request.getSession().setAttribute("project", projectVO);
		
//		System.out.println(projectVO);
		
		List<CategoryVO> categoryList= projectService.projectCategoryList(project_id);
		System.out.println(categoryList);
		request.getSession().setAttribute("categoryList", categoryList);
		request.getSession().removeAttribute("category");
		return URIs.URI_PROJECT_MAIN_PAGE;
	}
	
	//프로젝트 생성 폼
	@RequestMapping(value = URIs.URI_PROJECT_CREATE_FORM)
	public String doProjectCreateForm() throws Exception{
		
		logger.info("doProjectCreateForm");
		
		
		return URIs.URI_PROJECT_CREATE_FORM_PAGE;
	}
	
	//프로젝트 생성
	@RequestMapping(value = URIs.URI_PROJECT_CREATE)
	public String doProjectCreate(ProjectDTO projectDTO, HttpServletRequest request) throws Exception{

		logger.info("doProjectCreate");
		
		projectService.projectManagerInsert(projectDTO, request);
		
		
		return "redirect:"+URIs.URI_PROJECT_LIST;
	}
	
	//프로젝트 리스트
	@RequestMapping(value = URIs.URI_PROJECT_LIST)
	public String doProjectList(Model model, HttpServletRequest request) throws Exception{
		
		logger.info("doProjectList");
		
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		List<ProjectVO> projectList = projectService.projectList(user_id);
		
//		System.out.println(projectList);
		if(projectList.isEmpty()){
			return "redirect:"+URIs.URI_PROJECT_CREATE_FORM;
		}
		
		System.out.println(projectList);
//		model.addAttribute("projectList", projectList);
		request.getSession().setAttribute("projectList", projectList);
		
		String user_project_choice = projectService.projectChoiceGet(user_id);
		
		System.out.println(user_project_choice);
		if(user_project_choice != null) {
			return "redirect:"+URIs.PROJECT_DEFAULT+"/"+user_project_choice;
		}
		return URIs.URI_PROJECT_LIST_PAGE;
 
	}
	
	//프로젝트 카테고리 추가 Form
	@RequestMapping(value = URIs.URI_PROJECT_CATEGORY_CREATE_FORM)
	public String doProjectCategoryCreateForm() throws Exception{
		
		logger.info("doProjectCategoryCreateForm");

		return URIs.URI_PROJECT_CATEGORY_CREATE_FORM_PAGE;
	}
	
	@RequestMapping(value = URIs.URI_PROJECT_CATEGORY_CREATE)
	public String doProjectCategoryCreate(String category_name, HttpServletRequest request) throws Exception{
		
		logger.info("doProjectCategoryCreate");

		ProjectVO projectVO = (ProjectVO) request.getSession().getAttribute("project");
		String project_id = projectVO.getProject_id();
//		String project_name = projectVO.getProject_name();
//		project_name = URLEncoder.encode(project_name, "UTF-8");
		CategoryCreateDTO categoryCreateDTO = new CategoryCreateDTO();
		categoryCreateDTO.setCategory_name(category_name);
		categoryCreateDTO.setProject_id(project_id);
		
		projectService.projectCategoryCreate(categoryCreateDTO);
		return "redirect:/project/"+project_id;
	}
	
	@RequestMapping(value="/project/{project_id}/project_setting")
	public String projectSetting(@PathVariable("project_id")String project_id ,Model model) throws Exception{
		
		List<String> list = projectService.projectMemeberListService(project_id);
		model.addAttribute("projectM", list);
		
		return "/project/projectSetting";
	}
	
	@RequestMapping(value="/project/{project_id}/project_invite", method = RequestMethod.POST)
	public String projectInvite(@PathVariable("project_id")String project_id, ProjectDTO projectDTO) throws Exception{
		logger.info("project_invite");
		
		projectDTO.setProject_id(project_id);
		System.out.println(projectDTO.toString());
		projectService.projectInvite(projectDTO);
		
		return "redirect:/project/{project_id}/project_setting";
	}
	
	@RequestMapping(value="/project/{project_id}/project_member_delete")
	public String projectMemberDelete(@PathVariable("project_id")String project_id, ProjectDTO projectDTO) throws Exception{
		logger.info("project_delete");
		projectDTO.setProject_id(project_id);
		
		System.out.println(projectDTO.toString());
		projectService.projectMemberDeleteService(projectDTO);
				
		return "redirect:/project/{project_id}/project_setting";
	}
	@RequestMapping(value="/project/{project_id}/category_setting")
	public String categorySetting(@PathVariable("project_id")String project_id, Model model, 
			HttpServletRequest request,String category_id) throws Exception{
		
		category_id = request.getParameter("category_id");
		List<String> list1 = projectService.projectMemeberListService(project_id);
		List<String> list2 = projectService.categoryMemeberListService(category_id);
				
		for(String s : list2){
			if(list1.contains(s)){
				list1.remove(s);
			}
		}
		
		model.addAttribute("pmList", list1);
		model.addAttribute("cmList", list2);
		
		
		return "/project/categorySetting";
	}
	
	@RequestMapping(value= "/project/{project_id}/categoryMemberModify")
	public String categoryMemberModify(HttpServletRequest request, String category_id) throws Exception{
		
		String[] value = request.getParameterValues("member_nickname");
		
		System.out.println(value[0]);
		
		projectService.categoryMemberModify(value, category_id);
		
		
		return "redirect:/project/{project_id}/category_setting";
	}
	
	@RequestMapping(value = "/project/{project_id}/categoryDelete/{category_id}")
	@ResponseBody
	public int categoryDelete(@PathVariable("project_id")String project_id, 
			@PathVariable("category_id")String category_id) throws Exception{

		System.out.println("category_id : " + category_id);
		int result = projectService.categoryDeleteService(category_id);
		System.out.println(result);
		return result;
	}
	
	
	
}
