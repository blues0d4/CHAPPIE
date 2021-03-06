package kr.co.syteam.controller.todolist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.chappie.vo.ChappieVO;
import kr.co.syteam.domain.chart.vo.ChartVO;
import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.chappie.ChappieService;
import kr.co.syteam.service.chart.ChartService;
import kr.co.syteam.service.history.HistoryService;
import kr.co.syteam.service.project.ProjectService;
import kr.co.syteam.service.todo.TodoService;

@Controller
// @RequestMapping("")
public class TodoController {

	private static final Logger logger = LoggerFactory.getLogger(TodoController.class);

	@Autowired
	private TodoService todoService;

	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private ChappieService chappieService;
	
	@Autowired
	private ChartService chartService;

	@RequestMapping(value = "/project/{project_id}/todo/{category_id}", method = RequestMethod.GET)
	public String todoList(@PathVariable("project_id") String project_id,
			@PathVariable("category_id") String category_id, Model model, HttpServletRequest request) throws Exception {
		logger.info("This is TodoList!!");

		// 세션에서 user_id를 가져온다.
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();

		// DTO에 project_name과 user_id를 넣어준다.
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_id(project_id);
		projectSelectDTO.setUser_id(user_id);

		// 선택한 project가 있는지 체크
		ProjectVO projectVO = projectService.projectSelect(projectSelectDTO);
		// 없으면 "main"으로 리턴
		if (projectVO == null) {
			return "redirect:" + URIs.URI_MAIN;
		}
		// model.addAttribute("project", projectVO);
		// 세션에 선택한 project를 VO로 저장
		request.getSession().setAttribute("project", projectVO);
		System.out.println(projectVO);
		List<CategoryVO> categoryList = projectService.projectCategoryList(project_id);
		System.out.println(categoryList);
		request.getSession().setAttribute("categoryList", categoryList);
		request.getSession().removeAttribute("category");

		// String project_name = projectVO.getProject_name();

		CategoryDTO categoryDTO = new CategoryDTO();

		categoryDTO.setCategory_id(category_id);
		categoryDTO.setProject_id(project_id);

		CategoryVO categoryVO = projectService.projectCategorySelect(categoryDTO);
		if (categoryVO == null) {
			return "redirect:" + URIs.URI_MAIN;
		}
		request.getSession().setAttribute("category", categoryVO);

		List<TodoVO> todoList = todoService.todoListViewService(category_id);
		List<String> categoryMemberList = todoService.categoryMemberSelectService(category_id); 
		
		model.addAttribute("todoList", todoList);
		model.addAttribute("cmList", categoryMemberList);
		
		List<ChartVO> chartList = chartService.progressService(project_id);
		
		// 전체 진척도 구하기
		ChartVO chartVO = new ChartVO();
		double todo_cnt=0;
		double todo_complete_cnt=0;
				
		for(ChartVO vo : chartList){
			todo_cnt += Integer.parseInt(vo.getTodo_cnt());
			todo_complete_cnt += Integer.parseInt(vo.getTodo_complete_cnt());
		}
		double progress = Math.round((todo_complete_cnt/todo_cnt)*100*10d)/10d; 
		
		
		chartVO.setCategory_name("전체");
//		chartVO.setTodo_cnt(String.valueOf(todo_cnt));
		chartVO.setTodo_cnt(String.valueOf((int)todo_cnt));
		chartVO.setTodo_complete_cnt(String.valueOf(todo_complete_cnt));
		chartVO.setTodo_complete_cnt(String.valueOf((int)todo_complete_cnt));
		chartVO.setProgress(progress);
		
		
		List<ChartVO> mcVO = chartService.memberChartService(project_id);
		
		// model에 넣기
		model.addAttribute("chart", chartList);
		model.addAttribute("allChart", chartVO);
		model.addAttribute("mcVO", mcVO);
		
		List<ChappieVO> chappieVO = chappieService.selectChappieService(loginVO.getUser_id());
		model.addAttribute("chappieVO", chappieVO);

		return "/todo/todoList";
	}

	@RequestMapping(value = "/project/{project_id}/todo/{category_id}/todoView", method = RequestMethod.GET)
	public String todoView(@PathVariable("category_id")String category_id, Model model, String todo_no) throws Exception {
		
		TodoVO todoVO = new TodoVO();
		todoVO = todoService.todoViewService(todo_no);
		todoVO.setTodo_no(todo_no);
		List<String> list1 = todoService.categoryMemberSelectService(category_id); 
		List<String> list2 = todoService.todoMemberSelectService(todo_no);
		
		for(String s : list2){
			if(list1.contains(s)){
				list1.remove(s);
			}			
		}
		
		model.addAttribute("cmList", list1);
		model.addAttribute("tmList", list2);
		model.addAttribute("todoView", todoVO);

		return "/todo/todoCheck";
	}

	@RequestMapping(value = "/project/{project_id}/todo/{category_id}/todoWrite", method = RequestMethod.POST)
	public String todoWrite(@PathVariable("project_id")String project_id, 
			@PathVariable("category_id") String category_id, TodoDTO todoDTO, HttpServletRequest request) throws Exception {
		String[] value = request.getParameterValues("member_nickname");
		todoDTO.setCategory_id(category_id);
		todoDTO.setProject_id(project_id);
		todoService.todoWriteService(todoDTO);
		todoService.todoMemberWriteService(value);
		
		HistoryDTO historyDTO = new HistoryDTO();
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		CategoryVO categoryVO = (CategoryVO)request.getSession().getAttribute("category");
		historyDTO.setEvent("등록");
		historyDTO.setProject_id(project_id);
		historyDTO.setMember_nickname(loginVO.getUser_name());
		historyDTO.setCategory_name(categoryVO.getCategory_name());
		historyDTO.setTitle(todoDTO.getTodo_list());
		historyDTO.setKind("일정");
//		boardDTO.setCategory_id(category_id);
		historyService.historyInsertService(historyDTO);

		return "redirect:"+URIs.PROJECT_DEFAULT +"/"+ project_id + "/todo/" + category_id;
	}

	@RequestMapping(value = "/project/{project_id}/todo/{category_id}/todoModify", method = RequestMethod.POST)
	public String todoModify(@PathVariable("project_id")String project_id, 
			@PathVariable("category_id") String category_id, TodoDTO todoDTO, String todo_no, HttpServletRequest request) throws Exception {
		String[] value = request.getParameterValues("member_nickname");
		todoDTO.setTodo_no(todo_no);
		System.out.println("todoModify!!!!!!!!! : " + todoDTO);

	
		todoService.todoModifyService(todoDTO);
		todoService.todoMemberModify(value, todo_no);
		
		HistoryDTO historyDTO = new HistoryDTO();
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		CategoryVO categoryVO = (CategoryVO)request.getSession().getAttribute("category");
		historyDTO.setEvent("수정");
		historyDTO.setProject_id(project_id);
		historyDTO.setMember_nickname(loginVO.getUser_name());
		historyDTO.setCategory_name(categoryVO.getCategory_name());
		historyDTO.setTitle(todoDTO.getTodo_list());
		historyDTO.setKind("todo-list");
//		boardDTO.setCategory_id(category_id);
		historyService.historyInsertService(historyDTO);

		return "redirect:"+URIs.PROJECT_DEFAULT +"/"+ project_id + "/todo/" + category_id;
	}
	
	@RequestMapping(value = "/project/{project_id}/todo/{category_id}/todoDelete", method = RequestMethod.GET)
	public String todoDelete(@PathVariable("project_id")String project_id, 
			@PathVariable("category_id") String category_id, TodoDTO todoDTO, String todo_no, HttpServletRequest request) throws Exception {
		
		TodoVO todoVO = todoService.todoViewService(todo_no);

		HistoryDTO historyDTO = new HistoryDTO();
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		CategoryVO categoryVO = (CategoryVO)request.getSession().getAttribute("category");
		historyDTO.setEvent("삭제");
		historyDTO.setProject_id(project_id);
		historyDTO.setMember_nickname(loginVO.getUser_name());
		historyDTO.setCategory_name(categoryVO.getCategory_name());
		historyDTO.setTitle(todoVO.getTodo_list());
		historyDTO.setKind("todo-list");
//		boardDTO.setCategory_id(category_id);
		historyService.historyInsertService(historyDTO);
		todoService.todoDeleteService(todo_no);
		return "redirect:"+URIs.PROJECT_DEFAULT +"/"+ project_id + "/todo/" + category_id;
	}

	@RequestMapping(value = "/todo/todoComplete", method = RequestMethod.GET)
	@ResponseBody
	public int todoComplete(String todo_no, HttpServletRequest request) throws Exception {
		System.out.println("todoComplete!!!!!! : " + todo_no);
				
		HistoryDTO historyDTO = new HistoryDTO();
		ProjectVO projectVO = (ProjectVO)request.getSession().getAttribute("project");
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		CategoryVO categoryVO = (CategoryVO)request.getSession().getAttribute("category");
		historyDTO.setProject_id(projectVO.getProject_id());
		historyDTO.setMember_nickname(loginVO.getUser_name());
		historyDTO.setCategory_name(categoryVO.getCategory_name());
		
		int result = todoService.todoCompleteService(todo_no, historyDTO);
		historyService.historyInsertService(historyDTO);
		return result;
	}

}
