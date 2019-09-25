package kr.or.ddit.test.aop;

import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.or.ddit.user.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = 
		 {"classpath:kr/or/ddit/spring/ioc/component-scan-test.xml",	//test resources
		 "classpath:kr/or/ddit/config/spring/context-datasource-test.xml"	//test resources
		})
public class AopTest {
	
	private static final Logger logger = LoggerFactory.getLogger(AopTest.class);
	
	@Resource(name="userService")
	private IUserService userService;
	
	@Test
	public void aopTest() {
		/***Given***/
		

		/***When***/
		userService.getUserList();
		logger.debug("userService.getUserListTest()");
		/***Then***/
		assertNotNull(userService);
	}

}
