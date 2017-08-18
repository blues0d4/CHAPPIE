package kr.co.syteam.domain.board.dto;

public class BoardDTO {
	private String category_id;
	private String board_title;
	private String board_contents;
	private String board_no;
	private String board_notice;
	public String getBoard_notice() {
		return board_notice;
	}

	public void setBoard_notice(String board_notice) {
		this.board_notice = board_notice;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	private String user_id;

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_contents() {
		return board_contents;
	}

	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "BoardDTO [category_id=" + category_id + ", board_title=" + board_title + ", board_contents="
				+ board_contents + ", board_no=" + board_no + ", user_id=" + user_id + "]";
	}

	
}
