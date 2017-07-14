package kr.co.syteam.domain.category.dto;

public class CategoryDTO {
	private String category_id;
	private String project_id;

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	@Override
	public String toString() {
		return "CategoryDTO [category_id=" + category_id + ", project_id=" + project_id + "]";
	}

}
