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
import egovframework.example.sample.service.RecruitService;
import egovframework.example.sample.service.RecruitVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * @Class Name : RecruitController.java
 * @Description : Recruit Controller Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.03		ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@RequestMapping(value = "/recruit/*")
@Controller
public class RecruitController {
	
	/** RecruitService */
	@Resource(name = "recruitService")
	private RecruitService recruitService;

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
	private String path = "recruit";
	
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
	 * 인재상을 조회한다.
	 * @return "home"
	 * @exception Exception
	 */
	@RequestMapping(value = "/model.do")
	public String model() throws Exception {
		return "recruit/model";
	}
	
	/**
	 * 채용안내글 목록을 조회한다. (pageing)
	 * @param searchVO - 조회할 정보가 담긴 SampleDefaultVO
	 * @param model
	 * @return "RecruitList"
	 * @exception Exception
	 */
	@RequestMapping(value = "/information.do")
	public String information(@ModelAttribute("searchVO") SearchVO searchVO, ModelMap model) throws Exception {
		
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

		List<?> sampleList = recruitService.selectRecruitList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = recruitService.selectRecruitListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		return "recruit/information";
	}
	
	/**
	 * 채용안내 세부화면을 조회한다.
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param model
	 * @return "noticeView"
	 * @exception Exception
	 */
	@RequestMapping(value = "/informationView.do")
	public String informationView(@RequestParam("selectedId") String idx, @ModelAttribute("searchVO") SearchVO searchVO, Model model) throws Exception {
		RecruitVO recruitVO = new RecruitVO();
		recruitVO.setIdx(idx);
		model.addAttribute(selectRecruit(recruitVO, searchVO));
		return "recruit/informationView";
	}
	
	/**
	 * 채용안내글을 조회한다.
	 * @param recruitVO - 조회할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return @ModelAttribute("recruitVO") - 조회한 정보
	 * @exception Exception
	 */
	public RecruitVO selectRecruit(RecruitVO recruitVO, @ModelAttribute("searchVO") SearchVO searchVO) throws Exception {
		return recruitService.selectRecruit(recruitVO);
	}
}
