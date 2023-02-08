package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.RecruitVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @Class Name : RecruitDAO.java
 * @Description : Recruit DAO Class
 * @Modification Information
 * @
 * @ 수정일		수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.03		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@Repository("recruitDAO")
public class RecruitDAO extends EgovAbstractDAO {
	
	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 RecruitVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	public String insertRecruit(RecruitVO vo) throws Exception {
		return (String) insert("recruitDAO.insertRecruit", vo);
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	public void updateRecruit(RecruitVO vo) throws Exception {
		update("recruitDAO.updateRecruit", vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	public void deleteRecruit(RecruitVO vo) throws Exception {
		delete("recruitDAO.deleteRecruit", vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 RecruitVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public RecruitVO selectRecruit(RecruitVO vo) throws Exception {
		return (RecruitVO) select("recruitDAO.selectRecruit", vo);
	}

	/**
	 * 사용중인 글 목록을 조회한다. (useYn : 'Y')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectRecruitList(SearchVO searchVO) throws Exception {
		return list("recruitDAO.selectRecruitList", searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectRecruitListAdmin(SearchVO searchVO) throws Exception {
		return list("recruitDAO.selectRecruitListAdmin", searchVO);
	}
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectRecruitListTotCnt(SearchVO searchVO) {
		return (Integer) select("recruitDAO.selectRecruitListTotCnt", searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYn : 'Y', 'N')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectRecruitListTotCntAdmin(SearchVO searchVO) {
		return (Integer) select("recruitDAO.selectRecruitListTotCntAdmin", searchVO);
	}
}
