package fnp.kr.co.kosmo.mvc.service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fnp.kr.co.kosmo.mvc.dao.member.MemberDaoInter;
import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

@Service
public class MemberService implements MemberServiceInter{

	@Autowired
	private MemberDaoInter memberDaoInter;
	
	@Override
	public int chkIdPwd(MemberDTO mdto) {
		return memberDaoInter.chkIdPwd(mdto);
	}

	@Override
	public MemberDTO getUserInfo(MemberDTO mdto) {
		return memberDaoInter.getUserInfo(mdto);
	}

	@Override
	public void registerMember(MemberDTO mdto) {
		memberDaoInter.registerMember(mdto);
	}
	
	

}
