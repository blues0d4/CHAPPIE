package kr.co.syteam.dao.project;

public interface ProjectDAO {

	public void projectCreate(String project_name) throws Exception;
	public void projectSelectId(String project_name) throws Exception;
}
