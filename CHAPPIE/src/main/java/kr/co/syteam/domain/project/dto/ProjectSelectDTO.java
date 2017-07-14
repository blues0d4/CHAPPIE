package kr.co.syteam.domain.project.dto;

public class ProjectSelectDTO {

	private String project_id;
	private String user_id;

	

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ProjectSelectDTO [project_id=" + project_id + ", user_id=" + user_id + "]";
	}


	
	
}
