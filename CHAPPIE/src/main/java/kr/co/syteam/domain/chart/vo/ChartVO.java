package kr.co.syteam.domain.chart.vo;

public class ChartVO {
	String category_name;
	String todo_cnt;
	String todo_complete_cnt;
	
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getTodo_cnt() {
		return todo_cnt;
	}
	public void setTodo_cnt(String todo_cnt) {
		this.todo_cnt = todo_cnt;
	}
	public String getTodo_complete_cnt() {
		return todo_complete_cnt;
	}
	public void setTodo_complete_cnt(String todo_complete_cnt) {
		this.todo_complete_cnt = todo_complete_cnt;
	}
}
