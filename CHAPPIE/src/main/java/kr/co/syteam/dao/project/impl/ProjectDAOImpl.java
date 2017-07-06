package kr.co.syteam.dao.project.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.project.ProjectDAO;

@Repository
public class ProjectDAOImpl implements ProjectDAO {
	
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.syteam.mapper.ProjectMapper.";
	
	@Override
	public void projectCreate(String project_name) throws Exception {
		sqlSession.insert(namespace+"projectCreate", project_name);
	}

	@Override
	public void projectSelectId(String project_name) throws Exception {
		sqlSession.selectOne(namespace+"projectSelectId", project_name);
		
	}

}
