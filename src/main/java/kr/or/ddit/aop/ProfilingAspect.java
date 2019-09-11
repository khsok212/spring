package kr.or.ddit.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProfilingAspect {
	private static final Logger logger = LoggerFactory.getLogger(ProfilingAspect.class);
	
	public void before(JoinPoint joinPoint) {
		logger.debug("ProfilingAspect.before()");
	}
	
	public void after(JoinPoint joinPoint) {
		logger.debug("ProfilingAspect.after()");
	}
	
	public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
		// 시작시간
		long startDt = System.nanoTime();
		
		// 메소드실행
		Object[] args = joinPoint.getArgs();
		Object retObj = joinPoint.proceed(args);
		
		// 종료시간
		long endDt = System.nanoTime();
		logger.debug("endDt - startDt : {}", (endDt-startDt) + "ns");
		
		return retObj;
	}
	
}
