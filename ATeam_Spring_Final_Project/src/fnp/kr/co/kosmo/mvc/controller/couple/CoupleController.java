package fnp.kr.co.kosmo.mvc.controller.couple;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fnp.kr.co.kosmo.mvc.service.couple.CoupleServiceInter;

@Controller
public class CoupleController {

	@Autowired
	private CoupleServiceInter coupleServiceInter;

	@RequestMapping(value = {"/applicationCouple.do"})
	public ModelAndView applicationCouple(HttpSession session, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("couple/applicationCouple");
		String mappingMethod = request.getMethod();
		
		switch (mappingMethod) {
			case "GET":
				break;
			case "POST":
				coupleServiceInter.applicationCouple(session, request);
				break;
		}
		return mav;
	}
	
	@PostMapping(value = {"/accceptCouple.do"})
	public String accceptCouple(HttpServletRequest request, HttpSession session) {
		
		coupleServiceInter.accceptCouple(request, session);
		
		return "redirect:/index.do";
	}

	@GetMapping(value = { "/aboutCouple.do" })
	public ModelAndView aboutCouple(HttpSession session) {

		ModelAndView mav = new ModelAndView("couple/coupleInfo");
		mav.addObject("coupleInfo", coupleServiceInter.getPartnerInfo(session));
		return mav;
	}
	
	@GetMapping(value = {"/rejectApplicationCouple.do"})
	public String rejectApplicationCouple(HttpSession session, Model m) {
		
		coupleServiceInter.rejectApplicationCouple(session);
		return "redirect:/index.do";
	}

}
