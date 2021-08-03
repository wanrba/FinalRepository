package fnp.kr.co.kosmo.mvc.service.couple;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

public interface CoupleServiceInter {
	
	public Map<String, Object> chkApplicationCouple(int user_num);
	
	public List<MemberDTO> getPartnerInfo(HttpSession session);
	
	public int applicationCouple(HttpSession session, HttpServletRequest request);

	public void rejectApplicationCouple(HttpSession session);

	public void accceptCouple(HttpServletRequest request, HttpSession session);

}
