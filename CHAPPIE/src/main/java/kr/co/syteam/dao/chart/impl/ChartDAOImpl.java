package kr.co.syteam.dao.chart.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.chart.ChartDAO;
import kr.co.syteam.domain.chart.vo.ChartVO;

@Repository
public class ChartDAOImpl implements ChartDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.syteam.mapper.ProjectMapper.";

	@Override
	public List<ChartVO> selectCategoryName(String project_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChartVO> todoCnt(String project_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public int projectEmptyCheck(String user_id) throws Exception {
//		return sqlSession.selectOne(namespace + "projectEmptyCheck", user_id);
//	}	


}
