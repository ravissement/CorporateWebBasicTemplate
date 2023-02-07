package egovframework.example.sample.service.impl;

import egovframework.example.sample.service.LoginVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

/**
 * login에 관한 데이터처리 매퍼 클래스
 *
 * @author  ravissement
 * @since 2023.02.07
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *          수정일          	수정자           		수정내용
 *  ----------------    ------------    ---------------------------
 *   2023.02.07        	ravissement     최초 생성
 *
 * </pre>
 */
@Mapper("loginMapper")
public interface LoginMapper {

	/**
	 * 로그인을 수행한다.
	 * @param vo - 로그인 정보가 담긴 loginVO
	 * @return 등록 결과 	1: true others: false
	 * @exception Exception
	 */
	LoginVO loginAdmin(LoginVO vo) throws Exception;

}
