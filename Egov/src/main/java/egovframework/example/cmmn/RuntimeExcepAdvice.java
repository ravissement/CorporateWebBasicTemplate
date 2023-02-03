package egovframework.example.cmmn;

import java.net.URLEncoder;
import java.nio.file.AccessDeniedException;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import com.ibatis.sqlmap.engine.transaction.TransactionException;

import egovframework.rte.fdl.cmmn.exception.EgovBizException;
import egovframework.rte.fdl.cmmn.exception.FdlException;

/**
 * @Description : Runtime Exception Advice Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.03     ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
@EnableWebMvc
@ControllerAdvice
public class RuntimeExcepAdvice {
	
	/** FileExceptionHandler */
	@Resource(name = "fileHandler")
    private FileExcepHndlr fileExcepHandler;
	
	/** CommonExcepHndlr */
	@Resource(name = "cmmnHandler")
    private CmmnExcepHndlr CmmnExcepHndlr;
	
	/**
	 * MaxUploadSizeExceededException이 발생하면 그에 대한 사용자 안내 페이지를 조회한다.
	 * @maxSwallowSize="52428800" - Tomcat's Request Deny Scope 50MB.
	 * @maxUploadSize="10240000" - Handler's Exception handling Scope 10MB~50MB. 
	 * */
    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public void handleMaxUploadException(MaxUploadSizeExceededException e, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	HashMap<String, String> errMsg  = new HashMap<String, String>();
    	fileExcepHandler.occur(e, this.getClass().getName());
    	errMsg.put("error", fileExcepHandler.getUserFriendlyMessage());
		response.sendRedirect("/cmmn/runtimeError/runtimeError.do?resultMessage=" + URLEncoder.encode(errMsg.get("error"), "UTF-8"));
    }
    
    @ExceptionHandler({DataAccessException.class, RuntimeException.class, TransactionException.class, EgovBizException.class, AccessDeniedException.class, FdlException.class})
	public void handleExceptions(Exception e, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HashMap<String, String> errMsg  = new HashMap<String, String>();
		CmmnExcepHndlr.occur(e, this.getClass().getName());
		errMsg.put("error", CmmnExcepHndlr.getUserFriendlyMessage());
		response.sendRedirect("/cmmn/runtimeError/runtimeError.do?resultMessage=" + URLEncoder.encode(errMsg.get("error"), "UTF-8"));
	}
}
