package egovframework.example.sample.web;



import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.FileService;
import egovframework.example.sample.service.NoticeService;
import egovframework.example.sample.service.NoticeVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * @Class Name : AdminClientController.java
 * @Description : Admin Client Controller Class
 * @Modification Notice
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

@RequestMapping(value = "/egovAdmin/client/*")
@Controller
public class ClientAdminCotroller {
	
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
	 * 공지사항글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "NoticeList"
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

		List<?> sampleList = noticeService.selectNoticeListAdmin(searchVO);
		model.addAttribute("resultList", sampleList);
		int totCnt = noticeService.selectNoticeListTotCntAdmin(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		return "egovAdmin/client/notice";
	}
	
	/**
	 * 공지사항글 등록 화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "noticeRegister"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addNotice.do", method = RequestMethod.GET)
	public String addNoticeView(@ModelAttribute("searchVO") SearchVO searchVO, Model model) throws Exception {
		model.addAttribute("noticeVO", new NoticeVO());
		return "egovAdmin/client/noticeRegister";
	}
	
	/**
	 * 공지사항글을 등록한다.
	 * @param noticeVO - 등록할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/notice.do"
	 * @exception Exception
	 */
	@RequestMapping(value = "/addNotice.do", method = RequestMethod.POST)
	public String addNotice(@ModelAttribute("searchVO") SearchVO searchVO, NoticeVO noticeVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
		
		// Server-Side Validation
		beanValidator.validate(noticeVO, bindingResult);
		if (bindingResult.hasErrors()) {
			model.addAttribute("noticeVO", noticeVO);
			return "egovAdmin/client/noticeRegister";
		}
		 
		// File Upload
		if (!noticeVO.getAttachFile().isEmpty()) {
			HashMap<String, String> fileName  = new HashMap<String, String>();
			fileName = fileService.saveFile(noticeVO.getAttachFile(), path);
			if(fileName.get("error") != null) {
				return "cmmn/runtimeError/fileError.do?resultMessage=" + URLEncoder.encode(fileName.get("error"), "UTF-8");
			}
			noticeVO.setAttachOriName(fileName.get("oriName"));
			noticeVO.setAttachSaveName(fileName.get("saveName"));
		}
		
		noticeService.insertNotice(noticeVO);
		status.setComplete();
		return "forward:/egovAdmin/client/notice.do";
	}
	
	/**
	 * 공지사항글 수정화면을 조회한다.
	 * @param id - 수정할 글 id
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "noticeRegister"
	 * @exception Exception
	 */
	@RequestMapping("/updateNoticeView.do")
	public String updateNoticeView(@RequestParam("selectedId") String idx, @ModelAttribute("searchVO") SearchVO searchVO, Model model) throws Exception {
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setIdx(idx);
		model.addAttribute(selectNotice(noticeVO, searchVO));
		return "egovAdmin/client/noticeRegister";
	}

	/**
	 * 공지사항글을 조회한다.
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
	 * 공지사항글을 수정한다.
	 * @param noticeVO - 수정할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/notice.do"
	 * @exception Exception
	 */
	@RequestMapping("/updateNotice.do")
	public String updateNotice(@ModelAttribute("searchVO") SearchVO searchVO, NoticeVO noticeVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		// Server-Side Validation
		beanValidator.validate(noticeVO, bindingResult);
		if (bindingResult.hasErrors()) {
			model.addAttribute("sampleVO", noticeVO);
			return "egovAdmin/client/noticeRegister";
		}
		
		// File Upload
		if (!noticeVO.getAttachFile().isEmpty()) {
			HashMap<String, String> fileName  = new HashMap<String, String>();
			fileName = fileService.saveFile(noticeVO.getAttachFile(), path);
			if(fileName.get("error") != null) {
				return "cmmn/runtimeError/fileError.do?resultMessage=" + URLEncoder.encode(fileName.get("error"), "UTF-8");
			}
			noticeVO.setAttachOriName(fileName.get("oriName"));
			noticeVO.setAttachSaveName(fileName.get("saveName"));
		}

		noticeService.updateNotice(noticeVO);
		status.setComplete();
		return "forward:/egovAdmin/client/notice.do";
	}

	/**
	 * 공지사항글을 삭제한다.
	 * @param noticeVO - 삭제할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/notice.do"
	 * @exception Exception
	 */
	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(NoticeVO noticeVO, @ModelAttribute("searchVO") SearchVO searchVO, SessionStatus status) throws Exception {
		noticeService.deleteNotice(noticeVO);
		status.setComplete();
		return "forward:/egovAdmin/client/notice.do";
	}	
	
}
