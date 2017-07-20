package kr.co.syteam.dao.board;

import java.util.List;

import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;

public interface BoardDAO {

	public void boardWrite(BoardDTO boardDTO) throws Exception;
	public List<BoardVO> boardList() throws Exception;
	public BoardVO boardView(String board_no) throws Exception;
	public void boardHitCount(String board_no) throws Exception;
	public List<BoardVO> boardCategoryList(String project_name) throws Exception;
	public List<BoardVO> boardCategoryListView(CategoryDTO categoryDTO) throws Exception;
	public void boardDelete(BoardDTO boardDTO) throws Exception;
	public void boardModify(BoardDTO boardDTO) throws Exception;
}
