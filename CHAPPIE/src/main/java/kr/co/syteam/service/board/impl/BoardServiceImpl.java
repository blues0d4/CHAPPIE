package kr.co.syteam.service.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.board.BoardDAO;
import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.service.board.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public void boardWrite(BoardDTO boardDTO) throws Exception {
		boardDAO.boardWrite(boardDTO);		
	}

	@Override
	public List<BoardVO> boardList() throws Exception {
		return boardDAO.boardList();
	}

	@Override
	public BoardVO boardView(String board_no) throws Exception {
		return boardDAO.boardView(board_no);
	}

//	@Override
//	public List<BoardVO> boardCategoryList(String project_name) throws Exception {
//		return boardDAO.boardCategoryList(project_name);
//	}
//
//	@Override
//	public CategoryVO boardCategorySelect(CategoryDTO categoryDTO) throws Exception {
//		return boardDAO.boardCategorySelect(categoryDTO);
//	}

	@Override
	public List<BoardVO> boardCategoryListView(CategoryDTO categoryDTO) throws Exception {
		return boardDAO.boardCategoryListView(categoryDTO);
	}
	

}
