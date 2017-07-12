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
	public CategoryVO boardCategorySelect(CategoryDTO categoryDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProjectVO> boardCategoryList(String project_name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
