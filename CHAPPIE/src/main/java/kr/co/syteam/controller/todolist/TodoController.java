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
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.project.ProjectService;
import kr.co.syteam.service.todo.TodoService;

@Controller
//@RequestMapping("")
public class TodoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TodoController.class);
	
	@Autowired
	private TodoService todoService;
	
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping(value = "/project/{project_name}/todo/{category_name}", method = RequestMethod.GET)
	public String todoList(@PathVariable("project_name")String project_name, @PathVariable("category_name") String category_name, Model model, HttpServletRequest request) throws Exception {
		logger.info("This is TodoList!!");
		
		// 세션에서 user_id를 가져온다.
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();

		// DTO에 project_name과 user_id를 넣어준다.
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_name(project_name);
		projectSelectDTO.setUser_id(user_id);

		// 선택한 project가 있는지 체크
		ProjectVO projectVO = projectService.projectSelect(projectSelectDTO);
		// 없으면 "main"으로 리턴
		if (projectVO == null) {
			return URIs.URI_MAIN_REDIRECT;
		}
		
		//여기부터 수정해야함
//		List<TodoVO> todoList = todoService.todoListViewService(category_id);
//
//		System.out.println("@@@ TodoVO : " + todoList);
//		model.addAttribute("todoList", todoList);
		
		return "/todo/todoList";
	}	
	
	@RequestMapping(value = "/todoView", method= RequestMethod.GET)
	public String todoView(Model model, String todo_no) throws Exception{
		
		
		TodoVO todoVO = new TodoVO();
		todoVO = todoService.todoViewService(todo_no);
		todoVO.setTodo_no(todo_no);
		System.out.println("todoView !!!!!!!!!! todo_no : " + todoVO );	
		
		model.addAttribute("todoView", todoVO);
		
		return "/todo/todoCheck";
	}
	
	@RequestMapping(value="/todoWrite", method= RequestMethod.POST)
	public String todoWrite(TodoDTO todoDTO) throws Exception{
		System.out.println("todoWrite!!!!!!!!! : " + todoDTO);
		todoDTO.setCategory_id("2023");
		
		todoService.todoWriteService(todoDTO);
		
		return "redirect:/todo/todoList";
	}
	
	@RequestMapping(value="/todoModify", method= RequestMethod.POST)
	public String todoModify(TodoDTO todoDTO, String todo_no) throws Exception{

		todoDTO.setTodo_no(todo_no);
		System.out.println("todoModify!!!!!!!!! : " + todoDTO);
		
		todoService.todoModifyService(todoDTO);
		
		return "redirect:/todo/todoList";
	}
	
	@RequestMapping(value="/todoComplete", method= RequestMethod.GET)
	@ResponseBody
	public int todoComplete(String todo_no) throws Exception{
		System.out.println("todoComplete!!!!!! : " + todo_no);
		
		return todoService.todoCompleteService(todo_no);
	}
	
	
	
}  
