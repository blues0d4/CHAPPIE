package kr.co.syteam.dao.project.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.project.ProjectDAO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;

@Repository
public class ProjectDAOImpl implements ProjectDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.syteam.mapper.ProjectMapper.";

	@Override
	public int projectEmptyCheck(String user_id) throws Exception {
		return sqlSession.selectOne(namespace + "projectEmptyCheck", user_id);
	}

	@Override
	public void projectCreate(String project_name) throws Exception {
		sqlSession.insert(namespace + "projectCreate", project_name);
	}

	@Override
	public String projectGetId(String project_name) throws Exception {
		return sqlSession.selectOne(namespace + "projectGetId", project_name);

	}

	@Override
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception {
		sqlSession.insert(namespace+"projectMemberInsert", projectDTO);
	}

	@Override
	public List<ProjectVO> projectList(String user_id) throws Exception {
		return sqlSession.selectList(namespace+"projectList", user_id);
	}

	@Override
	public ProjectVO projectSelect(String project_name) throws Exception {
		return sqlSession.selectOne(namespace+"projectSelect", project_name);
	}


}
