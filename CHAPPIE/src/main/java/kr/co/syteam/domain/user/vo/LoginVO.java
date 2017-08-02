package kr.co.syteam.domain.user.vo;

public class LoginVO {

	private String user_id;
	private String user_name;
	private String logindate;
	private String user_project_choice;
	
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
	public String getLogindate() {
		return logindate;
	}
	public void setLogindate(String logindate) {
		this.logindate = logindate;
	}
	
	public String getUser_project_choice() {
		return user_project_choice;
	}
	public void setUser_project_choice(String user_project_choice) {
		this.user_project_choice = user_project_choice;
	}
	@Override
	public String toString() {
		return "LoginVO [user_id=" + user_id + ", user_name=" + user_name + ", logindate=" + logindate + "]";
	}
	
	
}
