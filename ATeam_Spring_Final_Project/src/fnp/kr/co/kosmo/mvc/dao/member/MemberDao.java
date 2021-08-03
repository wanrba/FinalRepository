package fnp.kr.co.kosmo.mvc.dao.member;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

@Repository
public class MemberDao implements MemberDaoInter{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int chkIdPwd(MemberDTO mdto) {
		return sqlSessionTemplate.selectOne("member.chkIdPwd", mdto);
	}

	@Override
	public MemberDTO getUserInfo(MemberDTO mdto) {
		return sqlSessionTemplate.selectOne("member.getUserInfo", mdto);
	}

	@Override
	public void registerMember(MemberDTO mdto) {
		sqlSessionTemplate.insert("member.register", mdto);
	}

	@Override
	public void updateCoupleInfo(Map<String, Object> map) {
		sqlSessionTemplate.update("member.updateCoupleInfo", map);
		
	}

}
