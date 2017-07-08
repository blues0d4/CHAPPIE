package kr.co.syteam.domain.category.dto;

public class CategoryDTO {
	private String category_name;
	private String project_name;
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	@Override
	public String toString() {
		return "CategorySelectDTO [category_name=" + category_name + ", project_name=" + project_name + "]";
	}
	
	
}
