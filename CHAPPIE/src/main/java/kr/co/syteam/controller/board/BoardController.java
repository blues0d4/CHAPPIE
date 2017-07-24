package kr.co.syteam.controller.board;

import java.util.List;

import javax.servlet.ServletRequest;
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

	@RequestMapping(value = URIs.URI_BOARD_LIST)
	public String doBoardCategoryList(@PathVariable("project_id") String project_id, @PathVariable("category_id")String category_id, Model model,
			HttpServletRequest request) throws Exception {
		logger.info("doBoardCategoryList");

		//세션에서 user_id를 가져온다.
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		
		//DTO에 project_name과 user_id를 넣어준다.
		ProjectSelectDTO projectSelectDTO = new ProjectSelectDTO();
		projectSelectDTO.setProject_id(project_id);
		projectSelectDTO.setUser_id(user_id);
		
		//선택한 project가 있는지 체크
		ProjectVO projectVO = projectService.projectSelect(projectSelectDTO);
		//없으면 "main"으로 리턴
		if(projectVO == null){
			return "redirect:"+URIs.URI_MAIN;
		}
//		model.addAttribute("project", projectVO);
		//세션에 선택한 project를 VO로 저장
		request.getSession().setAttribute("project", projectVO);
		System.out.println(projectVO);
		List<CategoryVO> categoryList= projectService.projectCategoryList(project_id);
		System.out.println(categoryList);
		request.getSession().setAttribute("categoryList", categoryList);
		request.getSession().removeAttribute("category");
		
//		String project_name = projectVO.getProject_name();

		CategoryDTO categoryDTO = new CategoryDTO();

		categoryDTO.setCategory_id(category_id);
		categoryDTO.setProject_id(project_id);

		CategoryVO categoryVO = projectService.projectCategorySelect(categoryDTO);
		if (categoryVO == null) {
			return "redirect:" + URIs.URI_MAIN;
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

		return URIs.URI_BOARD_LIST_PAGE;
	}

//	@RequestMapping(value = "/board/boardView/{board_no}")
//	public String doBoardView(@PathVariable("board_no") String board_no, Model model) throws Exception {
//
//		BoardVO boardVO = boardService.boardView(board_no);
//
//		if (boardVO == null) {
//			return "redirect:/";
//		}
//		model.addAttribute("board", boardVO);
//		return "board/boardView";
//	}
	
	@RequestMapping(value = URIs.URI_BOARD_WRITE_FORM)
	public String doBoardWriteForm() throws Exception{
		logger.info("doBoardWriteForm");
		
		return URIs.URI_BOARD_WRITE_FORM_PAGE;
	}
	
	@RequestMapping(value = URIs.URI_BOARD_WRITE)
	public String doBoardWrite(@PathVariable("project_id")String project_id, @PathVariable("category_id") String category_id, BoardDTO boardDTO, HttpServletRequest request) throws Exception{
		
		logger.info("doBoardWrite");

		

//		CategoryVO categoryVO = (CategoryVO) request.getSession().getAttribute("category");
//		String user_id = loginVO.getUser_id();
		
		
//		boardDTO.setCategory_id(category_id);
		boardService.boardWrite(boardDTO);
		
		return "redirect:/project/"+project_id+"/board/"+category_id;
	}
	
	@RequestMapping(value = URIs.URI_BOARD_DELETE + "/{board_no}")
	public String doBoardDelete(@PathVariable("project_id")String project_id, @PathVariable("category_id") String category_id, @PathVariable("board_no") String board_no, BoardDTO boardDTO) throws Exception {
		
		logger.info("doBoardDelete");

//		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
//		String user_id = loginVO.getUser_id();
		
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setBoard_no(board_no);
//		boardDTO.setUser_id(user_id);
		boardService.boardDelete(boardDTO);
		
		return "redirect:/project/"+project_id+"/board/"+category_id;
	}
	
	@RequestMapping(value = URIs.URI_BOARD_MODIFY_FORM + "/{board_no}")
	public String doBoardModifyForm(@PathVariable("project_id")String project_id, @PathVariable("category_id") String category_id, @PathVariable("board_no") String board_no, HttpServletRequest request, Model model) throws Exception {
		
		logger.info("doBoardModifyForm");

		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("login");
		String user_id = loginVO.getUser_id();
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setBoard_no(board_no);
		boardDTO.setUser_id(user_id);
		boardService.boardDelete(boardDTO);
		
		BoardVO boardVO = boardService.boardView(board_no);

		if (boardVO == null) {
			return "redirect:/project/"+project_id+"/board/"+category_id;
		}
		model.addAttribute("boardVO", boardVO);
		
		return URIs.URI_BOARD_MODIFY_FORM_PAGE;
	}
	
	@RequestMapping(value = URIs.URI_BOARD_MODIFY + "/{board_no}")
	public String doBoardModify(@PathVariable("project_id")String project_id, @PathVariable("category_id") String category_id, BoardDTO boardDTO) throws Exception {
		
		logger.info("doBoardModify");

		boardService.boardModify(boardDTO);
		
		return "redirect:/project/"+project_id+"/board/"+category_id;
	}
}
