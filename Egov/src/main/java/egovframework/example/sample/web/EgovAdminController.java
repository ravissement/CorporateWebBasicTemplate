package egovframework.example.sample.web;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.LoginVO;

/**
 * @Class Name : EgovAdminController.java
 * @Description : EgovAdmin Controller Class
 * @Modification Information
 * @
 * @ 수정일		수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.07		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@RequestMapping(value = "/egovAdmin/*")
@Controller
public class EgovAdminController {

	/** loginService */
	@Resource(name = "loginService")
	private LoginService loginService;
	
	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	/**
	 * 로그인 화면을 조회한다.
	 * @param model
	 * @return "login"
	 * @exception Exception
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Model model) throws Exception {
		model.addAttribute("loginVO", new LoginVO());
		return "egovAdmin/login";
	}
	
	/**
	 * 로그인을 수행한다.
	 * @param loginVO - 로그인 정보가 담긴 VO
	 * @return "forward:/egovAdmin/recruit/information.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(LoginVO loginVO, BindingResult bindingResult, Model model,  HttpServletRequest req, HttpServletResponse rep)
			throws Exception {
		
		// Server-Side Validation
		beanValidator.validate(loginVO, bindingResult);
		if (bindingResult.hasErrors()) {
			model.addAttribute("logintVO", loginVO);
			return "egovAdmin/login";
		}
		
		int result = loginService.loginAdmin(loginVO);
		if (result == 1) {
			HttpSession session = req.getSession();
			session.setAttribute("loginID", loginVO.getId());
			return "forward:/egovAdmin/recruit/information.do";
		} else {
			rep.setCharacterEncoding("UTF-8");
			rep.setContentType("text/html; charset=UTF-8");
			PrintWriter out=rep.getWriter();
			out.println("<script language='javascript'>");
			out.println("alert('로그인 정보가 일치하지 않습니다.');");
			out.println("</script>");
			out.flush();
			return "egovAdmin/login";
		}
	}
	
	/**
	 * 로그아웃을 수행한다.
	 * @param HttpServletRequest - remove할 session
	 * @param model
	 * @return "login"
	 * @exception Exception
	 */
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) throws Exception {
		loginService.logoutAdmin(req);
		return "forward:/egovAdmin/login.do";
	}
	
}
