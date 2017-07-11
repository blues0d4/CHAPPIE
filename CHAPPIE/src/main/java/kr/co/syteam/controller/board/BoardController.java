package kr.co.syteam.controller.board;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.board.BoardService;
import kr.co.syteam.service.project.ProjectService;

@Controller
//@RequestMapping("/project/*/")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ProjectService projectService;

	// @RequestMapping(value="/")
	// public String doBoardList(String board_no, Model model)throws Exception{
	//
	// BoardVO boardVO = boardService.boardView(board_no);
	//
	// if(boardVO == null){
	//
	// }
	// model.addAttribute("board", boardVO);
	// return "board/boardView";
	// }

	// @RequestMapping(value = URIs.BOARD_DEFAULT, method = RequestMethod.GET)
	// public String doBoardList(Model model, HttpServletRequest request) throws
	// Exception {
	// logger.info("doBoardList");
	//
	// List<BoardVO> boardList = boardService.boardList();
	// model.addAttribute("boardList", boardList);
	// System.out.println(boardList);
	//// return URIs.URI_BOARD_LIST_FULL;
	//
	// ProjectVO projectVO =
	// (ProjectVO)request.getSession().getAttribute("project");
	// System.out.println(projectVO);
	//
	// return "/board/boardList";
	// }
	@RequestMapping(value = "/project/{project_name}/board/{category_name}")
	public String doCategoryView(@PathVariable("project_name") String project_name, @PathVariable("category_name") String category_name, Model model,
			HttpServletRequest request) throws Exception {
		logger.info("doCategoryView");

		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_name(project_name);
		projectSelectDTO.setUser_id(user_id);
		
		//선택한 project가 있는지 체크
		ProjectVO projectVO = projectService.projectSelect(projectSelectDTO);
		//없으면 "main"으로 리턴
		if(projectVO == null){
			return URIs.URI_MAIN_REDIRECT;
		}
//		model.addAttribute("project", projectVO);
		//세션에 선택한 project를 VO로 저장
		request.getSession().setAttribute("project", projectVO);
		System.out.println(projectVO);
		
		List<BoardVO> categoryList= boardService.boardCategoryList(project_name);
		System.out.println(categoryList);
		request.getSession().setAttribute("categoryList", categoryList);
		request.getSession().removeAttribute("category");
		
//		String project_name = projectVO.getProject_name();

		CategoryDTO categoryDTO = new CategoryDTO();

		categoryDTO.setCategory_name(category_name);
		categoryDTO.setProject_name(project_name);

		CategoryVO categoryVO = boardService.boardCategorySelect(categoryDTO);
		if (categoryVO == null) {
			return URIs.URI_MAIN_REDIRECT;
		}
		request.getSession().setAttribute("category", categoryVO);

		List<BoardVO> boardList = boardService.boardCategoryListView(categoryDTO);
		model.addAttribute("boardList", boardList);
		System.out.println(boardList);
		// System.out.println("------");
		// System.out.println(categoryVO);
		// System.out.println("------");

		// System.out.println(projectVO);
		// System.out.println("----");
		// System.out.println(project_name);
		// System.out.println("----");

		// List<BoardVO> boardList = boardService.boardList();
		// model.addAttribute("boardList", boardList);
		// System.out.println(boardList);

		return "board/boardList";
	}

	@RequestMapping(value = "/board/boardView/{board_no}")
	public String doBoardView(@PathVariable("board_no") String board_no, Model model) throws Exception {

		BoardVO boardVO = boardService.boardView(board_no);

		if (boardVO == null) {
			return "redirect:/";
		}
		model.addAttribute("board", boardVO);
		return "board/boardView";
	}
	
	@RequestMapping(value = "/project/{project_name}/board/{category_name}/boardWriteForm")
	public String doBoardWriteForm() throws Exception{
		logger.info("doBoardWriteForm");
		
		return "board/boardWriteForm";
	}
	
	@RequestMapping(value = "/project/{project_name}/board/{category_name}/boardWrite")
	public String doBoardWrite(@PathVariable("project_name")String project_name, @PathVariable("category_name") String category_name, BoardDTO boardDTO, HttpServletRequest request) throws Exception{
		
		logger.info("doBoardWrite");

		String project_name_uri = URLEncoder.encode(project_name, "UTF-8");
		String category_name_uri = URLEncoder.encode(category_name, "UTF-8");
		System.out.println(category_name_uri);
		

//		CategoryVO categoryVO = (CategoryVO) request.getSession().getAttribute("category");
//		String user_id = loginVO.getUser_id();
		
		
//		boardDTO.setCategory_id(category_id);
		boardService.boardWrite(boardDTO);
		
		return "redirect:/project/"+project_name_uri+"/board/"+category_name_uri;
	}
}
