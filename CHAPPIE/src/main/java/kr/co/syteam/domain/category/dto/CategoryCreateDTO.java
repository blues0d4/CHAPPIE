package kr.co.syteam.domain.category.dto;

public class CategoryCreateDTO {
	private String category_name;
	private String project_id;

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	@Override
	public String toString() {
		return "CategoryCreateDTO [category_name=" + category_name + ", project_id=" + project_id + "]";
	}

}
