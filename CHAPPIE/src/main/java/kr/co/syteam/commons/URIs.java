package kr.co.syteam.commons;

public class URIs {
	 
	//Main URI
	public static final String URI_MAIN = "/";
	
	//default URI
	private static final String user_default = "/user";
	private static final String board_default = "/board";

	//USER URI

	public static final String URI_USER_LOGIN_FORM = "/userLoginForm";
	public static final String URI_USER_LOGIN_FORM_FULL = user_default + URI_USER_LOGIN_FORM;
	
	public static final String URI_USER_LOGIN = "/userLogin";
	public static final String URI_USER_LOGIN_FULL = user_default + URI_USER_LOGIN;
	
	public static final String URI_USER_LOGOUT = "/userLogout";
	public static final String URI_USER_LOGOUT_FULL = user_default + URI_USER_LOGOUT;

	public static final String URI_USER_ID_CHECK = "/userIdCheck";
	public static final String URI_USER_ID_CHECK_FULL = user_default + URI_USER_ID_CHECK;
	
	public static final String URI_USER_JOIN = "/userJoin";
	public static final String URI_USER_JOIN_FULL = user_default + URI_USER_JOIN;
	
	public static final String URI_USER_JOIN_FORM = "/userJoinForm";
	public static final String URI_USER_JOIN_FORM_FULL = user_default + URI_USER_JOIN_FORM;

	
	//BOARD URI
	public static final String URI_BOARD_LIST = "/boardList";
	public static final String URI_BOARD_LIST_FULL = board_default + URI_BOARD_LIST;
	
	public static final String URI_BOARD_CONTENTS = "/board";
	public static final String URI_BOARD_CONTENTS_FULL = board_default + URI_BOARD_CONTENTS;
	
	public static final String URI_BOARD_WRITE = "/boardInsert";
	public static final String URI_BOARD_WRITE_FULL = board_default + URI_BOARD_WRITE;
	
	public static final String URI_BOARD_WRITE_PAGE = "/boardWrite";
	public static final String URI_BOARD_WRITE_PAGE_FULL = board_default + URI_BOARD_WRITE_PAGE;
	
	public static final String URI_BOARD_UPDATE = "/boardUpdate";
	public static final String URI_BOARD_UPDATE_FULL = board_default + URI_BOARD_UPDATE;
	
	public static final String URI_BOARD_MODIFY_PAGE = "/boardModify";
	public static final String URI_BOARD_MODIFY_PAGE_FULL = board_default + URI_BOARD_MODIFY_PAGE;
	
	public static final String URI_BOARD_DELETE = "/boardDelete";
	public static final String URI_BOARD_DELETE_FULL = board_default + URI_BOARD_DELETE;
	
}
