package kr.co.syteam.project;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.service.project.ProjectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProjectServiceTest{
	
	@Autowired
	private ProjectService projectService;
	
	//프로젝트 생성(테스트 미완료)
//	@Test
//	public void testProjectCreate() throws Exception{
//		projectDAO.projectCreate("projectTest02");
//	}
	
	//프로젝트 ID찾기 (테스트 미완료)
//	@Test
//	public void testProjectGetId() throws Exception{
//		ProjectVO projectVO = projectDAO.projectGetId("ptest01");
//		System.out.println(projectVO);
//	}
	
	//프로젝트 Empty 체크 (테스트 미완료)
//	@Test
//	public void testProjectEmptyCheck() throws Exception{
//		int result = projectDAO.projectEmptyCheck("1");
//		System.out.println(result);
//	}
	
	//프로젝트 managerInsert (테스트 완료)
//	@Test
//	public void testProjectManagerInsert() throws Exception{
//		ProjectDTO projectDTO = new ProjectDTO();
//		projectDTO.setProject_name("SY32");
//		projectDTO.setUser_id("1");
//		projectDTO.setMember_nickname("nick1");
//		projectDTO.setMember_rank("Y");
//		projectService.projectMemberInsert(projectDTO);
//		System.out.println("testProjectManagerInsert");
//		System.out.println(projectDTO);
//	}
	
	//프로젝트 리스트 (테스트 완료)
	@Test
	public void testProjectList() throws Exception{
		String user_id = "1";
		List<ProjectVO> projectList = projectService.projectList(user_id);
		for(ProjectVO projectVO : projectList){
		System.out.println(projectVO.getProject_id());
		System.out.println(projectVO.getProject_name());
		System.out.println(projectVO.getMember_rank());
		System.out.println(projectVO.getMember_nickname());
		System.out.println(projectVO.getUser_id());
		}
	}

}
