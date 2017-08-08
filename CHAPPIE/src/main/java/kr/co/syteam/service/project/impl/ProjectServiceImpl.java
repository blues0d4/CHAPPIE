package kr.co.syteam.service.project.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.project.ProjectDAO;
import kr.co.syteam.domain.category.dto.CategoryCreateDTO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.temp.dto.TempDTO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.project.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDAO projectDAO;
	
	@Override
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception {
		projectDAO.projectMemberInsert(projectDTO);
	}

	@Override
	public void projectManagerInsert(ProjectDTO projectDTO, HttpServletRequest request) throws Exception {
		
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		String member_nickname = loginVO.getUser_name();
		String member_rank = "Y";
		String project_name = projectDTO.getProject_name();
		
		projectDAO.projectCreate(project_name);
		String project_id = projectDAO.projectGetId(project_name);
		
		projectDTO.setMember_nickname(member_nickname);
		projectDTO.setMember_rank(member_rank);
		projectDTO.setUser_id(user_id);
		projectDTO.setProject_id(project_id);

		projectDAO.projectMemberInsert(projectDTO);
		
		System.out.println("projectManagerInsert");
		System.out.println(projectDTO);
		
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_id(project_id);
		projectSelectDTO.setUser_id(user_id);
		
		System.out.println(projectSelectDTO);
		
		projectDAO.projectChoice(projectSelectDTO);
	}

	@Override
	public List<ProjectVO> projectList(String user_id) throws Exception {
		return projectDAO.projectList(user_id);
	}

	@Override
	public ProjectVO projectSelect(ProjectSelectDTO projectSelectDTO) throws Exception {
		return projectDAO.projectSelect(projectSelectDTO);
	}

	@Override
	public void projectCategoryCreate(CategoryCreateDTO categoryCreateDTO) throws Exception {
		projectDAO.projectCategoryCreate(categoryCreateDTO);
	}

	@Override
	public CategoryVO projectCategorySelect(CategoryDTO categoryDTO) throws Exception {
		return projectDAO.projectCategorySelect(categoryDTO);
	}

	@Override
	public List<CategoryVO> projectCategoryList(String project_id) throws Exception {
		return projectDAO.projectCategoryList(project_id);
	}

	@Override
	public void projectInvite(ProjectDTO projectDTO) throws Exception {
		
		ProjectVO projectVO = projectDAO.getUserIdName(projectDTO.getUser_id());
		
		if(projectVO != null){
			projectDTO.setMember_nickname(projectVO.getUser_name());
			projectDAO.projectInvite(projectDTO);
		}else{
		}
	}

	@Override
	public List<String> projectMemeberListService(String project_id) throws Exception {
		return projectDAO.projectMemberList(project_id);
	}

	@Override
	public int projectMemberDeleteService(ProjectDTO projectDTO) throws Exception {
		return projectDAO.projectMemberDelete(projectDTO);
	}

	@Override
	public int categoryDeleteService(String category_id) throws Exception {
		return projectDAO.categoryDelete(category_id);
	}

	@Override
	public List<String> categoryMemeberListService(String category_id) throws Exception {
		return projectDAO.categoryMemberList(category_id);
	}

	@Override
	public int categoryMemberModify(String[] member_nickname, String category_id) throws Exception {
		int result=0;
		projectDAO.categoryMemberDelete(category_id);
		
		for(int i = 0;i<member_nickname.length;i++){
			CategoryDTO categoryDTO = new CategoryDTO();
			categoryDTO.setCategory_id(category_id);
			categoryDTO.setMember_nickname(member_nickname[i]);
			
			
			result = projectDAO.categoryMemberWrite(categoryDTO);
		}
		
		return result;
	}

	@Override
	public void projectChoice(ProjectSelectDTO projectSelectDTO) throws Exception {
		projectDAO.projectChoice(projectSelectDTO);
	}

	@Override
	public String projectChoiceGet(String user_id) throws Exception {
		return projectDAO.projectChoiceGet(user_id);
	}

	@Override
	public void tempTableService(TempDTO tempDTO) throws Exception {
		projectDAO.tempTable(tempDTO);
	}

	@Override
	public String categoryIdSelectService() throws Exception {
		return projectDAO.categoryIdSelect();
	}

	@Override
	public int projectDeleteService(String project_id) throws Exception {
		return projectDAO.projectDelete(project_id);
	}

}
