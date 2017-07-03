package kr.co.syteam.dao.board;

import java.util.List;

import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;

public interface BoardDAO {

	public void boardWrite(BoardDTO boardDTO) throws Exception;
	public List<BoardVO> boardList() throws Exception;
	public BoardVO boardView(String board_no) throws Exception;
	public void boardHitCount(String board_no) throws Exception;
}
