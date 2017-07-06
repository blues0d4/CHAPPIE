package kr.co.syteam.domain.project.vo;

public class ProjectVO {
	private String project_id;
	private String project_name;
	private String member_nickname;
	private String member_rank;
	private String user_id;
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
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "ProjectVO [project_id=" + project_id + ", project_name=" + project_name + ", member_nickname="
				+ member_nickname + ", member_rank=" + member_rank + ", user_id=" + user_id + "]";
	}
	
	
}
