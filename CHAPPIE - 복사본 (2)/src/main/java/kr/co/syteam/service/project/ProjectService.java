package kr.co.syteam.service.project;

import javax.servlet.http.HttpServletRequest;

import kr.co.syteam.domain.project.dto.ProjectDTO;
import kr.co.syteam.domain.project.vo.ProjectVO;

public interface ProjectService {
	public void projectMemberInsert(ProjectDTO projectDTO) throws Exception;
	public void projectManagerInsert(ProjectDTO projectDTO, HttpServletRequest request) throws Exception;
}
