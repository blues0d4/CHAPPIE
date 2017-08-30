package kr.co.syteam.domain.board.dto;

public class BoardCommentDTO {

	private String user_id;
	private String user_name;
	private String board_no;
	private String comment_contents;
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
	public String getBoard_no() {
		return board_no;
	}
	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}
	public String getComment_contents() {
		return comment_contents;
	}
	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
	}
	@Override
	public String toString() {
		return "BoardCommentDTO [user_id=" + user_id + ", user_name=" + user_name + ", board_no=" + board_no
				+ ", comment_contents=" + comment_contents + "]";
	}
	
	
	
	
}
