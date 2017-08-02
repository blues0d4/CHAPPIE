package kr.co.syteam.domain.board.vo;

public class BoardVO {
	private String category_id;
	private String category_name;
	private String board_title;
	private String board_no;
	private String board_contents;
	private String user_id;
	private String board_write_date;
	private String board_modify_date;
	private String board_hitcount;
	private String board_write_date_yyyymmdd;
	private String board_write_date_yyyy;
	private String board_write_date_mon;
	private String board_write_date_dd;
	private String board_write_date_day;
	private String comment_count;
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
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
	public String getBoard_hitcount() {
		return board_hitcount;
	}
	public void setBoard_hitcount(String board_hitcount) {
		this.board_hitcount = board_hitcount;
	}
	public String getBoard_write_date_yyyymmdd() {
		return board_write_date_yyyymmdd;
	}
	public void setBoard_write_date_yyyymmdd(String board_write_date_yyyymmdd) {
		this.board_write_date_yyyymmdd = board_write_date_yyyymmdd;
	}
	public String getBoard_write_date_yyyy() {
		return board_write_date_yyyy;
	}
	public void setBoard_write_date_yyyy(String board_write_date_yyyy) {
		this.board_write_date_yyyy = board_write_date_yyyy;
	}
	public String getBoard_write_date_mon() {
		return board_write_date_mon;
	}
	public void setBoard_write_date_mon(String board_write_date_mon) {
		this.board_write_date_mon = board_write_date_mon;
	}
	public String getBoard_write_date_dd() {
		return board_write_date_dd;
	}
	public void setBoard_write_date_dd(String board_write_date_dd) {
		this.board_write_date_dd = board_write_date_dd;
	}
	public String getBoard_write_date_day() {
		return board_write_date_day;
	}
	public void setBoard_write_date_day(String board_write_date_day) {
		this.board_write_date_day = board_write_date_day;
	}
	
	
	public String getComment_count() {
		return comment_count;
	}
	public void setComment_count(String comment_count) {
		this.comment_count = comment_count;
	}
	@Override
	public String toString() {
		return "BoardVO [category_id=" + category_id + ", category_name=" + category_name + ", board_title="
				+ board_title + ", board_no=" + board_no + ", board_contents=" + board_contents + ", user_id=" + user_id
				+ ", board_write_date=" + board_write_date + ", board_modify_date=" + board_modify_date
				+ ", board_hitcount=" + board_hitcount + ", board_write_date_yyyymmdd=" + board_write_date_yyyymmdd
				+ ", board_write_date_yyyy=" + board_write_date_yyyy + ", board_write_date_mon=" + board_write_date_mon
				+ ", board_write_date_dd=" + board_write_date_dd + ", board_write_date_day=" + board_write_date_day
				+ "]";
	}
	
	
}
