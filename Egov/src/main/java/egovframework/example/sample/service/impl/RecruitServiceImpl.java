package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.RecruitService;
import egovframework.example.sample.service.RecruitVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**
 * @Class Name : RecruitServiceImpl.java
 * @Description : Recruit Business Implement Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.03    	ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@Service("recruitService")
public class RecruitServiceImpl extends EgovAbstractServiceImpl implements RecruitService {

	//private static final Logger LOGGER = LoggerFactory.getLogger(RecruitServiceImpl.class);
	
	// TODO mybatis
	@Resource(name="recruitMapper")
	private RecruitMapper recruitDAO;
	
	
	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 RecruitVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void insertRecruit(RecruitVO vo) throws Exception {
		recruitDAO.insertRecruit(vo);  
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void updateRecruit(RecruitVO vo) throws Exception {
		recruitDAO.updateRecruit(vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void deleteRecruit(RecruitVO vo) throws Exception {
		recruitDAO.deleteRecruit(vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 RecruitVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	@Override
	public RecruitVO selectRecruit(RecruitVO vo) throws Exception {
		RecruitVO resultVO = recruitDAO.selectRecruit(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}
	
	/**
	 * 사용중인 글 목록을 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectRecruitList(SearchVO searchVO) throws Exception {
		return recruitDAO.selectRecruitList(searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectRecruitListAdmin(SearchVO searchVO) throws Exception {
		return recruitDAO.selectRecruitListAdmin(searchVO);
	}
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectRecruitListTotCnt(SearchVO searchVO) {
		return recruitDAO.selectRecruitListTotCnt(searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectRecruitListTotCntAdmin(SearchVO searchVO) {
		return recruitDAO.selectRecruitListTotCntAdmin(searchVO);
	}
}
