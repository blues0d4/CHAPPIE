package kr.co.syteam.project;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.dao.project.ProjectDAO;
import kr.co.syteam.domain.project.dto.ProjectDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProjectDAOTest{
	
	@Autowired
	private ProjectDAO projectDAO;
	
	//프로젝트 생성(테스트 완료)
//	@Test
//	public void testProjectCreate() throws Exception{
//		projectDAO.projectCreate("projectTest02");
//	}
	
	//프로젝트 ID찾기 (테스트 완료)
//	@Test
//	public void testProjectGetId() throws Exception{
//		ProjectVO projectVO = projectDAO.projectGetId("ptest01");
//		System.out.println(projectVO);
//	}
	
	//프로젝트 Empty 체크 (테스트 완료)
//	@Test
//	public void testProjectEmptyCheck() throws Exception{
//		int result = projectDAO.projectEmptyCheck("1");
//		System.out.println(result);
//	}
	
	//프로젝트 memberInsert (테스트 완료)
	@Test
	public void testProjectMemberInsert() throws Exception{
		ProjectDTO projectDTO = new ProjectDTO();
		projectDTO.setProject_id("1006");
		projectDTO.setMember_nickname("member_nickname");
		projectDTO.setMember_rank("N");
		projectDTO.setUser_id("1");
		projectDAO.projectMemberInsert(projectDTO);
		System.out.println(projectDTO);
	}

}
