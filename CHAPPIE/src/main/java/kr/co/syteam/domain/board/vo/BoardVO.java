package kr.co.syteam.domain.board.vo;

public class BoardVO {
	private String category_id;
	private String board_title;
	private String board_no;
	private String board_contents;
	private String user_id;
	private String board_write_date;
	private String board_modify_date;
	private String board_hitcount;

	public String getBoard_hitcount() {
		return board_hitcount;
	}

	public void setBoard_hitcount(String board_hitcount) {
		this.board_hitcount = board_hitcount;
	}

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

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
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

	public String getBoard_write_date() {
		return board_write_date;
	}

	public void setBoard_write_date(String board_write_date) {
		this.board_write_date = board_write_date;
	}

	public String getBoard_modify_date() {
		return board_modify_date;
	}

	public void setBoard_modify_date(String board_modify_date) {
		this.board_modify_date = board_modify_date;
	}

}
