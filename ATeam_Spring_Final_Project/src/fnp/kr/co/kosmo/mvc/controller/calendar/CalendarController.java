package fnp.kr.co.kosmo.mvc.controller.calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalendarController {
	
//	@Autowired
//	private CalendarServiceInter calendarServiceInter;
	
	@RequestMapping(value = {"/calendar.do"})
	public ModelAndView getCalendarList(HttpSession session, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("calendar/forCoupleCalendar");
		
		return mav;
	}

}
