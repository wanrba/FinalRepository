package fnp.kr.co.kosmo.mvc.aop;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import fnp.kr.co.kosmo.mvc.service.couple.CoupleServiceInter;

@Aspect
@Component
public class CheckCoupleApplicationAop {

	@Autowired
	private CoupleServiceInter coupleServiceInter;

	@Around("execution(* fnp.kr.co.kosmo.mvc.controller.*.*.*(..))")
	public Object checkApplicationCouple(ProceedingJoinPoint pjp) throws Throwable {
		HttpServletRequest request = null;
		Model m = null;
		HttpSession session = null;
		Map<String, Object> acDto = null;
		int user_num = 0;

		
		if (pjp.getArgs() != null || pjp.getArgs().length != 0) {
			
			for (Object o : pjp.getArgs()) {
				if (o instanceof HttpServletRequest) {
					request = (HttpServletRequest) o;
				} else if (o instanceof HttpSession) {
					session = (HttpSession) o;
					if (session.getAttribute("USER_NUM") != null) {
						user_num = (int) session.getAttribute("USER_NUM");
					}
				} else if (o instanceof Model) {
					m = (Model) o;
				}
			}
		}
		
		Object ob = pjp.proceed();

		if (user_num != 0) {
			if (request != null) {
				acDto = coupleServiceInter.chkApplicationCouple(user_num);
				if(acDto != null) {
					System.out.println("USER_FROM_INDEX ::::::::::::: " + acDto.get("USER_FROM_INDEX"));
					if(acDto.get("USER_FROM_INDEX") != null) {
						request.setAttribute("acDto", acDto);
					}
				}
			} else if (m != null) {
				acDto = coupleServiceInter.chkApplicationCouple(user_num);
				if(acDto != null) {
					System.out.println("USER_FROM_INDEX ::::::::::::: " + acDto.get("USER_FROM_INDEX"));
					if(acDto.get("USER_FROM_INDEX") != null) {
						m.addAttribute("acDto", acDto);	
					}
				}
			}
		}
		
		user_num = 0;
		
		return ob;

	}

}
