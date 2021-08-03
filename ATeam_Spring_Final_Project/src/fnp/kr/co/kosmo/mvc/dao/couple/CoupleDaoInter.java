package fnp.kr.co.kosmo.mvc.dao.couple;

import java.util.List;
import java.util.Map;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

public interface CoupleDaoInter {
	
	public Map<String, Object> chkApplicationCouple(int user_num);
	
	public List<MemberDTO> getPartnerInfo(int user_couplenum);
	
	public int applicationCouple(Map<String, Object> map);

	public void rejectApplicationCouple(Map<String, Integer> map);

	public void accceptCouple(Map<String, Object> map);

}
