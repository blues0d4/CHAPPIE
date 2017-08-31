package kr.co.syteam.commons;

public class PAGEs {
	
	private static final String default_path = "/WEB-INF/views";
	private static final String nav_path = default_path + "/nav";
	private static final String aside_path = default_path + "/aside";
	private static final String error_path = default_path + "/error";
	private static final String footer_path = default_path + "/footer";
	private static final String todo_path = default_path + "/todo";
	private static final String board_path = default_path + "/board";
	private static final String project_path = default_path + "/project";
	private static final String chappie_path = default_path + "/chappie";
	private static final String main_introduce_path = default_path + "/chappie";
	
	public static final String VIEW_PROJECT_MAIN = project_path + "/projectMain.jsp";
	
	public static final String VIEW_NAV_MAIN = nav_path + "/navMain.jsp";
	public static final String VIEW_NAV_PROJECT= nav_path + "/navProject.jsp";
	
	public static final String VIEW_ASIDE_LEFT = aside_path + "/asideProjectLeft.jsp";
	public static final String VIEW_ASIDE_RIGHT= aside_path + "/asideProjectRight.jsp";
	
	public static final String VIEW_BOARD_LIST = board_path + "";
	public static final String VIEW_BOARD_VIEW = board_path + "";
	
	public static final String VIEW_FOOTER_PROJECT = footer_path + "/footerProject.jsp";
	
	public static final String VIEW_CHAPPIE = chappie_path + "/chappie_message.jsp";
	public static final String VIEW_CHAPPIE_INTRO = chappie_path + "/chappie_message_intro.jsp";
//	public static final String VIEW_CHAPPIE_TEST = chappie_path + "/chappie_message2.jsp";
//	public static final String VIEW_MAIN_INTRODUCE = main_introduce_path + "/chappie_introduce.jsp";
}
