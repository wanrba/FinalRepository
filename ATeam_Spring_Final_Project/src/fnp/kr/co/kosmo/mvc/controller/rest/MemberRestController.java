package fnp.kr.co.kosmo.mvc.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;
import fnp.kr.co.kosmo.mvc.service.member.MemberServiceInter;

@RestController
public class MemberRestController {

	@Autowired
	private MemberServiceInter memberServiceInter;

	@PostMapping(value = { "/chkIdPwd.do" })
	public int chkIdPwd(MemberDTO mdto) {
		return memberServiceInter.chkIdPwd(mdto);

	}

}
