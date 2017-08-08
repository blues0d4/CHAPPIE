package kr.co.syteam.dao.history.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.history.HistoryDAO;
import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.history.vo.HistoryVO;

@Repository
public class HistoryDAOImpl implements HistoryDAO{
	
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.syteam.mapper.HistoryMapper.";

	@Override
	public void historyInsert(HistoryDTO historyDTO) throws Exception {
		sqlSession.insert(namespace+"historyInsert", historyDTO);
	}

	@Override
	public List<HistoryVO> historySelect(String project_id) throws Exception {
		return sqlSession.selectList(namespace+"historySelect", project_id);
	}

	
	
}
