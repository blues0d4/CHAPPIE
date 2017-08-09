package kr.co.syteam.dao.chappie.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.chappie.ChappieDAO;
import kr.co.syteam.domain.chappie.dto.ChappieDTO;
import kr.co.syteam.domain.chappie.vo.ChappieVO;

@Repository
public class ChappieDAOImpl implements ChappieDAO{

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.syteam.mapper.ChappieMapper.";
	
	@Override
	public List<ChappieVO> selectChappieLog(String user_id) throws Exception {
		return sqlSession.selectList(namespace+"selectChappieLog", user_id);
	}

	@Override
	public void insertChappieLog(ChappieDTO chappieDTO) throws Exception {
		sqlSession.insert(namespace+"insertChappieLog", chappieDTO);
	}
	
}
