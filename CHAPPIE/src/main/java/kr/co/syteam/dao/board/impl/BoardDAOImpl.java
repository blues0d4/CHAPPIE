package kr.co.syteam.dao.board.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.board.BoardDAO;
import kr.co.syteam.domain.board.dto.BoardCommentDTO;
import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardCommentVO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.syteam.mapper.BoardMapper.";

	@Override
	public void boardWrite(BoardDTO boardDTO) throws Exception {
		sqlSession.insert(namespace+"boardWrite", boardDTO);
	}

	@Override
	public List<BoardVO> boardList() throws Exception {
		return sqlSession.selectList(namespace+"boardList");
	}

	@Override
	public BoardVO boardView(String board_no) throws Exception {
		return sqlSession.selectOne(namespace+"boardView", board_no);
	}

	@Override
	public void boardHitCount(String board_no) throws Exception {
		int update_cnt = sqlSession.update(namespace+"boardHitCount", board_no);
	}

	@Override
	public List<BoardVO> boardCategoryList(String project_name) throws Exception {
		return sqlSession.selectList(namespace+"boardCategoryList", project_name);
	}

	

	@Override
	public List<BoardVO> boardCategoryListView(CategoryDTO categoryDTO) throws Exception {
		return sqlSession.selectList(namespace+"boardCategoryListView", categoryDTO);
	}

	@Override
	public void boardDelete(BoardDTO boardDTO) throws Exception {
		sqlSession.delete(namespace+"boardDelete", boardDTO);
		System.out.println("보드딜리트");
	}

	@Override
	public void boardModify(BoardDTO boardDTO) throws Exception {
		sqlSession.update(namespace+"boardModify", boardDTO);
	}

	@Override
	public void boardCommentWrite(BoardCommentDTO boardCommentDTO) throws Exception {
		sqlSession.insert(namespace+"boardCommentWrite", boardCommentDTO);
	}

	@Override
	public List<BoardCommentVO> boardCommentList(String board_no) throws Exception {
		return sqlSession.selectList(namespace+"boardCommentList", board_no);
	}
	
	
	
}
