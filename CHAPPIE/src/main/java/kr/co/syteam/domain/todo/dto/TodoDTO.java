package kr.co.syteam.domain.todo.dto;

import java.util.Date;

public class TodoDTO {
	private String todo_no;
	
	
	private String category_id;
	private String todo_list;
	private Date todo_start_date;
	private Date todo_end_date;
	private String member_nickname;
	private String todo_priority;
	private String todo_note;
	private String todo_complete;
	private String project_id;
	
	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	@Override
	public String toString() {
		return "TodoDTO [todo_no=" + todo_no + ", category_id=" + category_id + ", todo_list=" + todo_list
				+ ", todo_start_date=" + todo_start_date + ", todo_end_date=" + todo_end_date + ", member_nickname="
				+ member_nickname + ", todo_priority=" + todo_priority + ", todo_note=" + todo_note + ", todo_complete="
				+ todo_complete + "]";
	}	
	
	public Date getTodo_start_date() {
		return todo_start_date;
	}

	public void setTodo_start_date(Date todo_start_date) {
		this.todo_start_date = todo_start_date;
	}


	public Date getTodo_end_date() {
		return todo_end_date;
	}


	public void setTodo_end_date(Date todo_end_date) {
		this.todo_end_date = todo_end_date;
	}


	public String getTodo_no() {
		return todo_no;
	}
	public void setTodo_no(String todo_no) {
		this.todo_no = todo_no;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getTodo_list() {
		return todo_list;
	}
	public void setTodo_list(String todo_list) {
		this.todo_list = todo_list;
	}
	
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getTodo_priority() {
		return todo_priority;
	}
	public void setTodo_priority(String todo_priority) {
		this.todo_priority = todo_priority;
	}
	public String getTodo_note() {
		return todo_note;
	}
	public void setTodo_note(String todo_note) {
		this.todo_note = todo_note;
	}
	public String getTodo_complete() {
		return todo_complete;
	}
	public void setTodo_complete(String todo_complete) {
		this.todo_complete = todo_complete;
	}
	
	
}
