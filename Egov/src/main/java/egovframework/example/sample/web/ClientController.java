package egovframework.example.sample.web;



import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.FileService;
import egovframework.example.sample.service.NoticeService;
import egovframework.example.sample.service.NoticeVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * @Class Name : ClientController.java
 * @Description : Client Controller Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.06		ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.06
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@RequestMapping(value = "/client/*")
@Controller
public class ClientController {
	
	/** NoticeService */
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	/** FileService */
	@Resource(name = "fileService")
	private FileService fileService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	/** File Path */
	private String path = "client";
	
	/**
	 * 파일을 다운로드한다.
	 * @param fileSaveName - 다운로드할 파일의 Saved Name이 담긴 String
	 * @param fileOriName - 다운로드할 파일의  Original Name이 담긴 String
	 * @exception Exception
	 */
	@RequestMapping(value = "/fileDownload.do", method = RequestMethod.GET )
	public void fileDownload(String fileSaveName, String fileOriName, HttpServletResponse response) throws Exception {
		String resultMessage = fileService.downloadFile(fileSaveName, fileOriName, path, response);
		if(resultMessage != null) {
			response.sendRedirect("/cmmn/runtimeError/fileError.do?resultMessage=" + URLEncoder.encode(resultMessage, "UTF-8"));
		}
	}
	
	/**
	 * 공지사항을 목록을 조회한다.
	 * @param model
	 * @return "notice"
	 * @exception Exception
	 */
	@RequestMapping(value = "/notice.do")
	public String notice(@ModelAttribute("searchVO") SearchVO searchVO, ModelMap model) throws Exception {
		/** EgovPropertyService */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> sampleList = noticeService.selectNoticeList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = noticeService.selectNoticeListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		return "client/notice";
	}
	
	/**
	 * 공지사항 세부화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "noticeView"
	 * @exception Exception
	 */
	@RequestMapping(value = "/noticeView.do")
	public String noticeView(@RequestParam("selectedId") String idx, @ModelAttribute("searchVO") SearchVO searchVO, Model model) throws Exception {
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setIdx(idx);
		model.addAttribute(selectNotice(noticeVO, searchVO));
		return "client/noticeView";
	}
	
	/**
	 * 공지글을 조회한다.
	 * @param noticeVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("noticeVO") - 조회한 정보
	 * @exception Exception
	 */
	public NoticeVO selectNotice(NoticeVO noticeVO, @ModelAttribute("searchVO") SearchVO searchVO) throws Exception {
		return noticeService.selectNotice(noticeVO);
	}
	
	/**
	 * 분야별담당자를 조회한다.
	 * @param model
	 * @return "manager"
	 * @exception Exception
	 */
	@RequestMapping(value = "/manager.do")
	public String manager(Model model) throws Exception {
		return "client/manager";
	}
	
}
