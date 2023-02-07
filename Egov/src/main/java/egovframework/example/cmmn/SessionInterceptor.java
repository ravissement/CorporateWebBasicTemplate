package egovframework.example.cmmn;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


/**
 * @Class Name : SessionInterceptor.java
 * @Description :SessionInterceptor Class
 * @Modification Session
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.07		ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception { 
		String userInfo = (String) request.getSession().getAttribute("loginID");
		if (userInfo != null && !userInfo.isEmpty()) {
			return true;
		} else {
			ModelAndView modelAndView = new ModelAndView("redirect:/egovAdmin/login.do");
			throw new ModelAndViewDefiningException(modelAndView);
		}
	}
}
