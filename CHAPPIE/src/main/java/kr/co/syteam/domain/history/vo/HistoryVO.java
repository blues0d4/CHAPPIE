package kr.co.syteam.domain.history.vo;

public class HistoryVO {
	
	String member_nickname;
	String event;
	String submit_time;
	String project_id;
	String kind;
	String category_name;
	String title;
	
	public String getSubmit_time() {
		return submit_time;
	}
	public void setSubmit_time(String submit_time) {
		this.submit_time = submit_time;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	
	@Override
	public String toString() {
		return "HistoryVO [member_nickname=" + member_nickname + ", event=" + event + ", submit_time=" + submit_time
				+ ", kind=" + kind + ", category_name=" + category_name + ", title=" + title + "]";
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
	
}
