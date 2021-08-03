package fnp.kr.co.kosmo.mvc.dao.couple;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

@Repository
public class CoupleDao implements CoupleDaoInter {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public Map<String, Object> chkApplicationCouple(int user_num) {
		return sqlSessionTemplate.selectOne("couple.chkApplicationCouple", user_num);
	}

	@Override
	public List<MemberDTO> getPartnerInfo(int user_couplenum) {
		return sqlSessionTemplate.selectList("couple.getPartnerInfo", user_couplenum);
	}

	@Override
	public int applicationCouple(Map<String, Object> map) {
		return sqlSessionTemplate.insert("couple.sendApplicationCouple", map);
	}

	@Override
	public void rejectApplicationCouple(Map<String, Integer> map) {
		sqlSessionTemplate.delete("couple.rejectApplicationCouple", map);
	}

	@Override
	public void accceptCouple(Map<String, Object> map) {
		System.out.println(map.get("user_from_id"));
		System.out.println(map.get("user_to_id"));
		sqlSessionTemplate.insert("couple.acceptCouple", map);
		sqlSessionTemplate.delete("couple.rejectApplicationCouple", map);
	}

}
