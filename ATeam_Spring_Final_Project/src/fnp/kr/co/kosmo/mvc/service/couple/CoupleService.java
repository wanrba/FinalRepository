package fnp.kr.co.kosmo.mvc.service.couple;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fnp.kr.co.kosmo.mvc.dao.couple.CoupleDaoInter;
import fnp.kr.co.kosmo.mvc.dao.member.MemberDaoInter;
import fnp.kr.co.kosmo.mvc.dto.MemberDTO;

@Service
public class CoupleService implements CoupleServiceInter {

	@Autowired
	private CoupleDaoInter coupleDaoInter;
	
	@Autowired
	private MemberDaoInter memberDaoInter;

	@Override
	public Map<String, Object> chkApplicationCouple(int user_num) {
		return coupleDaoInter.chkApplicationCouple(user_num);
	}

	@Override
	public List<MemberDTO> getPartnerInfo(HttpSession session) {

		return coupleDaoInter.getPartnerInfo((int) session.getAttribute("USER_COUPLENUM"));
	}

	@Override
	public int applicationCouple(HttpSession session, HttpServletRequest request) {

		Map<String, Object> map = new HashMap<String, Object>();

		if (session.getAttribute("USER_NUM") != null) {
			map.put("user_from_index", session.getAttribute("USER_NUM"));
			map.put("user_to_index", request.getParameter("user_id"));
			map.put("ac_title", request.getParameter("ac_title"));
			map.put("ac_content", request.getParameter("ac_content"));

			return coupleDaoInter.applicationCouple(map);
		} else {
			return 0;
		}

	}

	@Override
	@Transactional
	public void rejectApplicationCouple(HttpSession session) {

		Map<String, Integer> map = new HashMap<String, Integer>();

		if (session.getAttribute("USER_NUM") != null) {
			map.put("user_index", (int) session.getAttribute("USER_NUM"));
			coupleDaoInter.rejectApplicationCouple(map);
		}
	}

	@Override
	@Transactional
	public void accceptCouple(HttpServletRequest request, HttpSession session) {

		Map<String, Object> map = new HashMap<String, Object>();

		if (session.getAttribute("USER_ID") != null && session.getAttribute("USER_NUM") != null) {
			map.put("user_from_id", request.getParameter("user_id"));
			map.put("user_to_id", String.valueOf(session.getAttribute("USER_ID")));
			map.put("user_index", (int) session.getAttribute("USER_NUM"));
			coupleDaoInter.accceptCouple(map);
			
			memberDaoInter.updateCoupleInfo(map);
		}

	}

}
