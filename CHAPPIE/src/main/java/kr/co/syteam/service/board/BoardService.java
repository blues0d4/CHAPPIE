package kr.co.syteam.service.board;

import java.util.List;

import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;

public interface BoardService {
	public void boardWrite(BoardDTO boardDTO) throws Exception;
	public List<BoardVO> boardList() throws Exception;
	public BoardVO boardView(String board_no) throws Exception;
//	public CategoryVO boardCategorySelect(CategoryDTO categoryDTO) throws Exception;
	public List<BoardVO> boardCategoryListView(CategoryDTO categoryDTO) throws Exception;
}
