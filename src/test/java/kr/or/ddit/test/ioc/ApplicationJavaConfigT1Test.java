package kr.or.ddit.test.ioc;

import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = ApplicationJavaConfigT1.class)
@WebAppConfiguration
public class ApplicationJavaConfigT1Test {
	
	private static final Logger logger = LoggerFactory.getLogger(ApplicationJavaConfigT1Test.class);
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
	@Resource(name="userService")
	private IUserService userService;
	
	/**
	 * 
	* Method : javaSpringBeanConfigTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : 자바파일을 통해 스프링 빈 설정 테스트
	 */
	@Test
	public void javaSpringBeanConfigTest() {
		/***Given***/
		

		/***When***/
		logger.debug("userService.getUserList() : {} ", userService.getUserList());
		logger.debug("userDao.getUserList() : {} ", userDao.getUserList());
		
		/***Then***/
		assertNotNull(userDao);
		assertNotNull(userService);
		
		
	}

}
