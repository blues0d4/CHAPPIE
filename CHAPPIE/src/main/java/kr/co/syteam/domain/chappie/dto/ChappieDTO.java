package kr.co.syteam.domain.chappie.dto;

public class ChappieDTO {
	private String user_id;
	private String user_say;
	private String bot_say;
	private String bot_img;
	private String chat_time;
	public String getUser_id() {
		return user_id;
	}
	@Override
	public String toString() {
		return "ChappieDTO [user_id=" + user_id + ", user_say=" + user_say + ", bot_say=" + bot_say + ", bot_img="
				+ bot_img + ", chat_time=" + chat_time + "]";
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_say() {
		return user_say;
	}
	public void setUser_say(String user_say) {
		this.user_say = user_say;
	}
	public String getBot_say() {
		return bot_say;
	}
	public void setBot_say(String bot_say) {
		this.bot_say = bot_say;
	}
	public String getBot_img() {
		return bot_img;
	}
	public void setBot_img(String bot_img) {
		this.bot_img = bot_img;
	}
	public String getChat_time() {
		return chat_time;
	}
	public void setChat_time(String chat_time) {
		this.chat_time = chat_time;
	}

}
