package fnp.kr.co.kosmo.mvc.dao.member;

import java.util.Map;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

public interface MemberDaoInter {
	
	public int chkIdPwd(MemberDTO mdto);

	public MemberDTO getUserInfo(MemberDTO mdto);

	public void registerMember(MemberDTO mdto);

	public void updateCoupleInfo(Map<String, Object> map);

}
