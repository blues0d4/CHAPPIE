package kr.co.syteam.dao.project;

import java.util.List;

import kr.co.syteam.domain.category.dto.CategoryCreateDTO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.dto.ProjectSelectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.domain.temp.dto.TempDTO;

public interface ProjectDAO {
	public int projectEmptyCheck(String user_id) throws Exception;
	public void projectCreate(String project_name) throws Exception;
	public String projectGetId(String project_name) throws Exception;
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception;
	public List<ProjectVO> projectList(String project_id) throws Exception;
	public ProjectVO projectSelect(ProjectSelectDTO projectSelectDTO) throws Exception; 
	public void projectCategoryCreate(CategoryCreateDTO categoryCreateDTO) throws Exception;
	public CategoryVO projectCategorySelect(CategoryDTO categoryDTO) throws Exception;
	public List<CategoryVO> projectCategoryList(String project_name) throws Exception;
	public void projectInvite(ProjectDTO projectDTO) throws Exception;
	public ProjectVO getUserIdName(String user_id) throws Exception;
	public List<String> projectMemberList(String project_id) throws Exception;
	public int projectMemberDelete(ProjectDTO projectDTO) throws Exception;
	public int categoryDelete(String category_id) throws Exception;
	public List<String> categoryMemberList(String category_id) throws Exception;
	public int categoryMemberDelete(String category_id) throws Exception;
	public int categoryMemberWrite(CategoryDTO categoryDTO) throws Exception;
	public void projectChoice(ProjectSelectDTO projectSelectDTO) throws Exception;
	public String projectChoiceGet(String user_id) throws Exception;
	public void tempTable(TempDTO tempDTO) throws Exception;
	public String categoryIdSelect() throws Exception;
	public int projectDelete(String project_id) throws Exception;
	public int checkMemberRank(ProjectDTO projectDTO) throws Exception;
}
