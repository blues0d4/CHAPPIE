package kr.co.syteam.domain.temp.dto;

public class TempDTO {
	private String user_id;
	private String user_name;
	private String project_id;
	private String project_name;
	
	
	@Override
	public String toString() {
		return "TempDTO [user_id=" + user_id + ", user_name=" + user_name + ", project_id=" + project_id
				+ ", project_name=" + project_name + "]";
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
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
	
	
	
}
