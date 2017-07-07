package kr.co.syteam.dao.project;

import java.util.List;

import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;

public interface ProjectDAO {
	public int projectEmptyCheck(String user_id) throws Exception;
	public void projectCreate(String project_name) throws Exception;
	public String projectGetId(String project_name) throws Exception;
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception;
	public List<ProjectVO> projectList(String user_id) throws Exception;
	public ProjectVO projectSelect(String project_name) throws Exception; 
}
