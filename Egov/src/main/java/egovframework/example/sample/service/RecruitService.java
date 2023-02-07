package egovframework.example.sample.service;

import java.util.List;

/**
 * @Class Name : RecruitService.java
 * @Description : RecruitService Class
 * @Modification Information
 * @
 * @  수정일			수정자			수정내용
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
public interface RecruitService {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	void insertRecruit(RecruitVO vo) throws Exception;

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	void updateRecruit(RecruitVO vo) throws Exception;

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 RecruitVO
	 * @return void형
	 * @exception Exception
	 */
	void deleteRecruit(RecruitVO vo) throws Exception;
	
	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 RecruitVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	RecruitVO selectRecruit(RecruitVO vo) throws Exception;
	
	/**
	 * 사용중인 글 목록을 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> selectRecruitList(SearchVO searchVO) throws Exception;
	
	/**
	 * 사용여부 관계 없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> selectRecruitListAdmin(SearchVO searchVO) throws Exception;
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	int selectRecruitListTotCnt(SearchVO searchVO);
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	int selectRecruitListTotCntAdmin(SearchVO searchVO);
}
