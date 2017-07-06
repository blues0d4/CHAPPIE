package kr.co.syteam.domain.project.vo;

public class ProjectVO {
	private String project_id;
	private String project_name;

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	@Override
	public String toString() {
		return "ProjectVO [project_id=" + project_id + ", project_name=" + project_name + "]";
	}

	
}
