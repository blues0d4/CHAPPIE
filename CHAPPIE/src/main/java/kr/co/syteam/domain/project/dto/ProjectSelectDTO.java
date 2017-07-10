package kr.co.syteam.domain.project.dto;

public class ProjectSelectDTO {

	private String project_name;
	private String user_id;

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ProjectSelectDTO [project_name=" + project_name + ", user_id=" + user_id + "]";
	}

}
