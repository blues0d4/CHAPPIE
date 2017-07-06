package kr.co.syteam.service.project.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.project.ProjectDAO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
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
	public void projectManagerInsert(ProjectDTO projectDTO) throws Exception {
		
		
		
		projectDAO.projectCreate(projectDTO.getProject_name());
		projectDTO.setProject_id(projectDAO.projectGetId(projectDTO.getProject_name()));
		projectDAO.projectMemberInsert(projectDTO);
		
		System.out.println("projectManagerInsert");
		System.out.println(projectDTO);
	}

}
