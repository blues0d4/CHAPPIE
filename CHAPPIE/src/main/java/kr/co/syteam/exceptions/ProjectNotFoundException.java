package kr.co.syteam.exceptions;

public class ProjectNotFoundException extends Exception{
	
	private static final long serialVersionUID = 6611273690758376914L;

	@Override
	public String getMessage() {
		return "해당 프로젝트가 없습니다.";
	}

}
