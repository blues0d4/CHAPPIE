package kr.co.syteam.service.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.co.syteam.domain.category.dto.CategoryCreateDTO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;

public interface ProjectService {
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception;
	public void projectManagerInsert(ProjectDTO projectDTO, HttpServletRequest request) throws Exception;
	public List<ProjectVO> projectList(String user_id) throws Exception;
	public ProjectVO projectSelect(ProjectSelectDTO projectSelectDTO) throws Exception; 
	public void projectCategoryCreate(CategoryCreateDTO categoryCreateDTO) throws Exception;
}
