package kr.co.syteam.interceptor.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("Login Interceptor");
		ModelMap modelMap = modelAndView.getModelMap();
		Object loginVO = modelMap.get("login");
		if(loginVO != null){
			request.getSession().setAttribute("login", loginVO);
		}
	}
}
