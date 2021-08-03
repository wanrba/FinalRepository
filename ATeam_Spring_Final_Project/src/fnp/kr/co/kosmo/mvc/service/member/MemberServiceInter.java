package fnp.kr.co.kosmo.mvc.service.member;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

public interface MemberServiceInter {
	
	/**
	 * 07-30 YoungJin
	 * Login시 ID & PWD 체크
	 * @param mdto
	 */
	public int chkIdPwd(MemberDTO mdto);

	/**
	 * 07-30 YoungJin
	 * Login 후 session에 저장 할 유저정보 조회
	 * @param mdto
	 */
	public MemberDTO getUserInfo(MemberDTO mdto);

	/**
	 * 07-30
	 * Member 회원가입 진행
	 * @param mdto
	 */
	public void registerMember(MemberDTO mdto);

}
