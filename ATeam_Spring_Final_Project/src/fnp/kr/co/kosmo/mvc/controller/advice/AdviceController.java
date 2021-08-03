package fnp.kr.co.kosmo.mvc.controller.advice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import fnp.kr.co.kosmo.mvc.service.advice.AdviceServiceInter;

@Controller
public class AdviceController {
	
	@Autowired
	private AdviceServiceInter adviceServiceInter;
	
	@RequestMapping(value = {"/advice.do"})
	public String forCoupleAdvice(HttpServletRequest request, Model m) {
		
		m.addAttribute("adviceList", adviceServiceInter.getAdviceList(request));
		
		return "advice/advice";
	}

}
