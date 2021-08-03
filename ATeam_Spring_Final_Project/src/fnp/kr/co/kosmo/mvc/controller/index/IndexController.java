package fnp.kr.co.kosmo.mvc.controller.index;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;
import fnp.kr.co.kosmo.mvc.service.member.MemberServiceInter;

@Controller
public class IndexController {

	@Autowired
	private MemberServiceInter memberServiceInter;

	@RequestMapping(value = { "/index.do" })
	public String indexTest(HttpSession session, Model m) {
		
		if(session.getAttribute("USER_ID") != null) {
			MemberDTO mdto = new MemberDTO();
			mdto.setUser_id(String.valueOf(session.getAttribute("USER_ID")));
			m.addAttribute("USER_ID", memberServiceInter.getUserInfo(mdto));
		}
		
		return "index/index";
	}

}
