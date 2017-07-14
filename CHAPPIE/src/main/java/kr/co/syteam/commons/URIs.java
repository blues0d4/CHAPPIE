package kr.co.syteam.commons;

public class URIs { 
	 
	//Main URI
	public static final String URI_MAIN = "/";
	
	//default URI
	public static final String MAIN_DEFAULT = "/main";
	public static final String USER_DEFAULT = "/user";
	public static final String BOARD_DEFAULT = "/board";
	public static final String PROJECT_DEFAULT = "/project";

	//MAIN URI
	public static final String URI_MAIN_PAGE = MAIN_DEFAULT + "/main";
	//USER URI

	public static final String URI_USER_LOGIN_FORM = "/userLoginForm";
	public static final String URI_USER_LOGIN_FORM_PAGE = USER_DEFAULT + URI_USER_LOGIN_FORM;
	
	public static final String URI_USER_LOGIN = "/userLogin";
	
	public static final String URI_USER_LOGOUT = "/userLogout";

	public static final String URI_USER_ID_CHECK = "/userIdCheck";
	
	public static final String URI_USER_JOIN = "/userJoin";
	
	public static final String URI_USER_JOIN_FORM = "/userJoinForm";
	public static final String URI_USER_JOIN_FORM_PAGE = USER_DEFAULT + URI_USER_JOIN_FORM;

	public static final String URI_USER_MODIFY = "/userModify";
	public static final String URI_USER_MODIFY_PAGE = USER_DEFAULT + URI_USER_MODIFY;
	
	public static final String URI_USER_MODIFY_FORM = "/userModifyForm";
	public static final String URI_USER_MODIFY_FORM_PAGE = USER_DEFAULT + URI_USER_MODIFY_FORM;

	
	//PROJECT URI
	public static final String URI_PROJECT_MAIN  = PROJECT_DEFAULT + "/{project_id}";
	public static final String URI_PROJECT_MAIN_PAGE  = PROJECT_DEFAULT + "/projectMain";
	
	public static final String URI_PROJECT_CREATE_FORM = "/projectCreateForm";
	public static final String URI_PROJECT_CREATE_FORM_PAGE = PROJECT_DEFAULT + URI_PROJECT_CREATE_FORM;
	
	public static final String URI_PROJECT_CREATE = "/projectCreate";
	public static final String URI_PROJECT_CREATE_PAGE = PROJECT_DEFAULT + URI_PROJECT_CREATE;
	
	public static final String URI_PROJECT_LIST = "/projectList";
	public static final String URI_PROJECT_LIST_PAGE = PROJECT_DEFAULT + URI_PROJECT_LIST;
	
	public static final String URI_PROJECT_SELECT = "/projectSelect";
	public static final String URI_PROJECT_SELECT_PAGE = PROJECT_DEFAULT + URI_PROJECT_SELECT;
	
	public static final String URI_PROJECT_CATEGORY_CREATE_FORM_DEFAULT = "/projectCategoryCreateForm";
	public static final String URI_PROJECT_CATEGORY_CREATE_FORM = URI_PROJECT_MAIN + URI_PROJECT_CATEGORY_CREATE_FORM_DEFAULT;
	public static final String URI_PROJECT_CATEGORY_CREATE_FORM_PAGE = PROJECT_DEFAULT + URI_PROJECT_CATEGORY_CREATE_FORM_DEFAULT;
	
	public static final String URI_PROJECT_CATEGORY_CREATE = PROJECT_DEFAULT + "/projectCategoryCreate";
	

	
	//BOARD URI
	
	
	public static final String URI_BOARD_MAIN = URI_PROJECT_MAIN + BOARD_DEFAULT + "/{category_id}";
	
	public static final String URI_BOARD_LIST = URI_BOARD_MAIN;
	public static final String URI_BOARD_LIST_PAGE = BOARD_DEFAULT + "/boardList";
	
	public static final String URI_BOARD_VIEW = "/boardView";
	public static final String URI_BOARD_VIEW_PAGE = BOARD_DEFAULT + URI_BOARD_VIEW;

	public static final String URI_BOARD_WRITE_DEFAULT = "/boardWrite";
	public static final String URI_BOARD_WRITE = URI_BOARD_MAIN + URI_BOARD_WRITE_DEFAULT;
	
	public static final String URI_BOARD_WRITE_FORM_DEFAULT = "/boardWriteForm";
	public static final String URI_BOARD_WRITE_FORM = URI_BOARD_MAIN + URI_BOARD_WRITE_FORM_DEFAULT;
	public static final String URI_BOARD_WRITE_FORM_PAGE = BOARD_DEFAULT + URI_BOARD_WRITE_FORM_DEFAULT;
	
	public static final String URI_BOARD_UPDATE = "/boardUpdate";
	public static final String URI_BOARD_UPDATE_PAGE = BOARD_DEFAULT + URI_BOARD_UPDATE;
	
	public static final String URI_BOARD_MODIFY_FORM = "/boardModify";
	public static final String URI_BOARD_MODIFY_FORM_PAGE = BOARD_DEFAULT + URI_BOARD_MODIFY_FORM;
	
	public static final String URI_BOARD_DELETE = "/boardDelete";
	public static final String URI_BOARD_DELETE_PAGE = BOARD_DEFAULT + URI_BOARD_DELETE;
	
	
}
