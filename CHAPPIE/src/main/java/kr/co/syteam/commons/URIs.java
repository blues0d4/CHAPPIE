package kr.co.syteam.commons;

public class URIs { 
	 
	//Main URI
	public static final String URI_MAIN = "/";
	public static final String URI_MAIN_REDIRECT = "redirect:" + URI_MAIN;
	
	//default URI
	public static final String MAIN_DEFAULT = "/main";
	public static final String USER_DEFAULT = "/user";
	public static final String BOARD_DEFAULT = "/board";
	public static final String PROJECT_DEFAULT = "/project";

	//MAIN URI
	public static final String URI_MAIN_FULL = MAIN_DEFAULT + "/main";
	//USER URI

	public static final String URI_USER_LOGIN_FORM = "/userLoginForm";
	public static final String URI_USER_LOGIN_FORM_FULL = USER_DEFAULT + URI_USER_LOGIN_FORM;
	
	public static final String URI_USER_LOGIN = "/userLogin";
	public static final String URI_USER_LOGIN_FULL = USER_DEFAULT + URI_USER_LOGIN;
	
	public static final String URI_USER_LOGOUT = "/userLogout";
	public static final String URI_USER_LOGOUT_FULL = USER_DEFAULT + URI_USER_LOGOUT;

	public static final String URI_USER_ID_CHECK = "/userIdCheck";
	public static final String URI_USER_ID_CHECK_FULL = USER_DEFAULT + URI_USER_ID_CHECK;
	
	public static final String URI_USER_JOIN = "/userJoin";
	public static final String URI_USER_JOIN_FULL = USER_DEFAULT + URI_USER_JOIN;
	
	public static final String URI_USER_JOIN_FORM = "/userJoinForm";
	public static final String URI_USER_JOIN_FORM_FULL = USER_DEFAULT + URI_USER_JOIN_FORM;

	public static final String URI_USER_MODIFY = "/userModify";
	public static final String URI_USER_MODIFY_FULL = USER_DEFAULT + URI_USER_MODIFY;
	
	public static final String URI_USER_MODIFY_FORM = "/userModifyForm";
	public static final String URI_USER_MODIFY_FORM_FULL = USER_DEFAULT + URI_USER_MODIFY_FORM;

	
	//BOARD URI
	public static final String URI_BOARD_LIST = "/boardList";
	public static final String URI_BOARD_LIST_FULL = BOARD_DEFAULT + URI_BOARD_LIST;
	
	public static final String URI_BOARD_VIEW = "/boardView";
	public static final String URI_BOARD_VIEW_FULL = BOARD_DEFAULT + URI_BOARD_VIEW;
	
	public static final String URI_BOARD_WRITE = "/boardInsert";
	public static final String URI_BOARD_WRITE_FULL = BOARD_DEFAULT + URI_BOARD_WRITE;
	
	public static final String URI_BOARD_WRITE_FORM = "/boardWrite";
	public static final String URI_BOARD_WRITE_FORM_FULL = BOARD_DEFAULT + URI_BOARD_WRITE_FORM;
	
	public static final String URI_BOARD_UPDATE = "/boardUpdate";
	public static final String URI_BOARD_UPDATE_FULL = BOARD_DEFAULT + URI_BOARD_UPDATE;
	
	public static final String URI_BOARD_MODIFY_FORM = "/boardModify";
	public static final String URI_BOARD_MODIFY_FORM_FULL = BOARD_DEFAULT + URI_BOARD_MODIFY_FORM;
	
	public static final String URI_BOARD_DELETE = "/boardDelete";
	public static final String URI_BOARD_DELETE_FULL = BOARD_DEFAULT + URI_BOARD_DELETE;
	
	
	//PROJECT URI
	public static final String URI_PROJECT_MAIN  = "/projectMain";
	public static final String URI_PROJECT_MAIN_FULL  = PROJECT_DEFAULT + URI_PROJECT_MAIN;
	
	public static final String URI_PROJECT_CREATE_FORM = "/projectCreateForm";
	public static final String URI_PROJECT_CREATE_FORM_FULL = PROJECT_DEFAULT + URI_PROJECT_CREATE_FORM;
	
	public static final String URI_PROJECT_CREATE = "/projectCreate";
	public static final String URI_PROJECT_CREATE_FULL = PROJECT_DEFAULT + URI_PROJECT_CREATE;
	
	public static final String URI_PROJECT_LIST = "/projectList";
	public static final String URI_PROJECT_LIST_FULL = PROJECT_DEFAULT + URI_PROJECT_LIST;
	
}
