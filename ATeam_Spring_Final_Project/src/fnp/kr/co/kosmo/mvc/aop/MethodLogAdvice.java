package fnp.kr.co.kosmo.mvc.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MethodLogAdvice {
	
//	/**
//	 * 07-18 YoungJin
//	 * ��� Controller�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@Before("execution(* fnp.kr.co.kosmo.mvc.controller.*.*.*(..))")
//	public void beforeControllerLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] Before Log");
//	}
//
//	/**
//	 * 07-18 YoungJin
//	 * ��� Controller�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@After("execution(* fnp.kr.co.kosmo.mvc.controller.*.*.*(..))")
//	public void afterControllerLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] After Log");
//	}
//	
//	/**
//	 * 07-18 YoungJin
//	 * ��� Service�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@Before("execution(* fnp.kr.co.kosmo.mvc.service.*.*.*(..))")
//	public void beforeServiceLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] Before Log");
//	}
//
//	/**
//	 * 07-18 YoungJin
//	 * ��� Service�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@After("execution(* fnp.kr.co.kosmo.mvc.service.*.*.*(..))")
//	public void afterServiceLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] After Log");
//	}
//	
//	/**
//	 * 07-18 YoungJin
//	 * ��� Dao�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@Before("execution(* fnp.kr.co.kosmo.mvc.dao.*.*.*(..))")
//	public void beforeDaoLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] After Log");
//	}
//	
//	/**
//	 * 07-18 YoungJin
//	 * ��� Dao�� �޼ҵ� ���� �� �α� ��¿�
//	 * @param jp
//	 */
//	@After("execution(* fnp.kr.co.kosmo.mvc.dao.*.*.*(..))")
//	public void afterDaoLog(JoinPoint jp) {
//		System.out.println(
//				"[" + jp.getTarget().getClass().getSimpleName() + " - " + jp.getSignature().getName() + "] After Log");
//	}
	
	

}
