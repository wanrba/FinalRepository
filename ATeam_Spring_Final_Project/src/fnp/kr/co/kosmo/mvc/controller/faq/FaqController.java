package fnp.kr.co.kosmo.mvc.controller.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FaqController {
	
	/**
	 * 07-30 YoungJin
	 * FAQ Page로 이동
	 * @return
	 */
	@GetMapping(value = {"/faqForm.do"})
	public String faqForm() {
		return "faq/faq";
	}

}
