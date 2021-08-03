package fnp.kr.co.kosmo.mvc.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import fnp.kr.co.kosmo.mvc.dto.MemberDTO;
import fnp.kr.co.kosmo.mvc.service.member.MemberServiceInter;

@Controller
public class MemberController {

	@Autowired
	private MemberServiceInter memberServiceInter;

	@GetMapping(value = { "/loginForm.do", "registerForm.do" })
	public String loginOrRegisterForm() {
		return "member/loginOrRegister";
	}

	@PostMapping(value = { "/login.do", "/register.do" })
	public ModelAndView loginOrRegister(HttpServletRequest request, HttpSession session, MemberDTO mdto) {

		ModelAndView mav = new ModelAndView();
		String mappingValue = request.getHttpServletMapping().getMatchValue();
		if (mappingValue.equals("register")) {
			memberServiceInter.registerMember(mdto);
			mav.setViewName("redirect:/loginForm.do");
		} else {
			System.out.println("login");
			MemberDTO dto = memberServiceInter.getUserInfo(mdto);
			session.setAttribute("USER_NUM", dto.getUser_num());
			session.setAttribute("USER_ID", dto.getUser_id());
			session.setAttribute("USER_NAME", dto.getUser_name());
			session.setAttribute("USER_COUPLENUM", dto.getUser_couplenum());
			session.setAttribute("USER_DDAY", dto.getUser_dday());
			mav.setViewName("redirect:/index.do");
		}
		return mav;
	}

	@GetMapping(value = { "/logout.do" })
	public String logout(HttpSession session) {
		session.removeAttribute("USER_NUM");
		session.removeAttribute("USER_ID");
		session.removeAttribute("USER_NAME");
		session.removeAttribute("USER_COUPLENUM");
		session.removeAttribute("USER_DDAY");

		return "redirect:/index.do";
	}
	
	@GetMapping(value = {"/myPage.do"})
	public ModelAndView myPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("member/myPage");
		MemberDTO mdto = new MemberDTO();
		
		mdto.setUser_id(String.valueOf(session.getAttribute("USER_ID")));
		mav.addObject("mdto", memberServiceInter.getUserInfo(mdto));
		
		return mav;
	}

}
