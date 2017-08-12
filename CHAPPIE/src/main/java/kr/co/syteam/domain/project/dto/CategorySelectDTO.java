package kr.co.syteam.domain.project.dto;

public class CategorySelectDTO {

	private String category_id;
	private String user_id;
	private String project_id;

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

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	@Override
	public String toString() {
		return "CategorySelectDTO [category_id=" + category_id + ", user_id=" + user_id + "]";
	}

	
}
