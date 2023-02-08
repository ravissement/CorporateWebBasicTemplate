package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.NoticeService;
import egovframework.example.sample.service.NoticeVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**
 * @Class Name : NoticeServiceImpl.java
 * @Description : Notice Business Implement Class
 * @Modification Information
 * @
 * @ 수정일		수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.06		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.06
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService {

	//private static final Logger LOGGER = LoggerFactory.getLogger(RecruitServiceImpl.class);
	
	// TODO mybatis
	@Resource(name="noticeMapper")
	private NoticeMapper noticeDAO;
	
	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 NoticeVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void insertNotice(NoticeVO vo) throws Exception {
		noticeDAO.insertNotice(vo);
	}
	
	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 NoticeVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		noticeDAO.updateNotice(vo);

	}
	
	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 NoticeVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void deleteNotice(NoticeVO vo) throws Exception {
		noticeDAO.deleteNotice(vo);

	}
	
	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 NoticeVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public NoticeVO selectNotice(NoticeVO vo) throws Exception {
		NoticeVO resultVO = noticeDAO.selectNotice(vo);
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
	public List<?> selectNoticeList(SearchVO searchVO) throws Exception {
		return noticeDAO.selectNoticeList(searchVO);
	}
	
	/**
	 * 홈화면의 글 목록을 조회한다. (useYn : 'Y')
	 * @param count - 조회할 정보의 갯수가 담긴 int
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectNoticeListHome(int count) throws Exception {
		return noticeDAO.selectNoticeListHome(count);
	}
	
	/**
	 * 사용여부 관계없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectNoticeListAdmin(SearchVO searchVO) throws Exception {
		return noticeDAO.selectNoticeListAdmin(searchVO);
	}
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectNoticeListTotCnt(SearchVO searchVO) {
		return noticeDAO.selectNoticeListTotCnt(searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectNoticeListTotCntAdmin(SearchVO searchVO) {
		return noticeDAO.selectNoticeListTotCntAdmin(searchVO);
	}

}
