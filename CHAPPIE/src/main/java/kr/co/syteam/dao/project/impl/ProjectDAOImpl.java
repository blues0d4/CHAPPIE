package kr.co.syteam.dao.project.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.project.ProjectDAO;
import kr.co.syteam.domain.category.dto.CategoryCreateDTO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
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
	public ProjectVO projectSelect(ProjectSelectDTO projectSelectDTO) throws Exception {
		return sqlSession.selectOne(namespace+"projectSelect", projectSelectDTO);
	}

	@Override
	public void projectCategoryCreate(CategoryCreateDTO categoryCreateDTO) throws Exception {
		sqlSession.insert(namespace+"projectCategoryCreate", categoryCreateDTO);
	}
	
	@Override
	public CategoryVO projectCategorySelect(CategoryDTO categoryDTO) throws Exception {
		return sqlSession.selectOne(namespace+"projectCategorySelect", categoryDTO);
	}

	@Override
	public List<CategoryVO> projectCategoryList(String project_name) throws Exception {
		return sqlSession.selectList(namespace+"projectCategoryList", project_name);
	}

	@Override
	public void projectInvite(ProjectDTO projectDTO) throws Exception {
		sqlSession.insert(namespace+"projectInvite", projectDTO);
	}

	@Override
	public ProjectVO getUserIdName(String user_id) throws Exception {
		return sqlSession.selectOne(namespace + "getUserIdName", user_id);
	}

	@Override
	public List<ProjectVO> projectMemberList(String project_id) throws Exception {
		return sqlSession.selectList(namespace+"projectMemberList", project_id);
	}


}
