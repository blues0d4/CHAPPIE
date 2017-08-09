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

	private static final String namespace = "kr.co.syteam.mapper.ChartMapper.";

	@Override
	public List<ChartVO> selectCategoryName(String project_id) throws Exception {
		return sqlSession.selectList(namespace + "selectCategoryName", project_id);
	}

	@Override
	public List<ChartVO> memberChart(String project_id) throws Exception {
		return sqlSession.selectList(namespace+"memberChart", project_id);
	}

}
