package kr.co.syteam.dao.project;

import kr.co.syteam.domain.project.vo.ProjectVO;

public interface ProjectDAO {
	public int projectEmptyCheck(String user_id) throws Exception;
	public void projectCreate(String project_name) throws Exception;
	public ProjectVO projectSelectId(String project_name) throws Exception;
}
