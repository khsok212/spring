package kr.or.ddit.test.ioc;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/or/ddit/spring/ioc/application-context-ioc-test.xml")
public class SpringIocTest {
	
	private static final Logger logger = LoggerFactory.getLogger(SpringIocTest.class);
	
	@Resource(name="dbProperty")
	private DbProperty dbProperty;
	
	@Resource(name="dbPropertySetter")
	private DbProperty dbPropertySetter;
	
	/**
	 * 
	* Method : propertyPlaceHolderTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : <context:property-placeholder> 테스트
	 */
	@Test
	public void propertyPlaceholderTest() {
		/***Given***/
		

		/***When***/

		/***Then***/
		logger.debug("dbProperty.getDriver() : {}", dbProperty.getDriver());
		logger.debug("dbProperty.getUrl() : {}", dbProperty.getUrl());
		logger.debug("dbProperty.getUser() : {}", dbProperty.getUser());
		logger.debug("dbProperty.getPass() : {}", dbProperty.getPass());
		
		assertNotNull(dbProperty);
		
		assertEquals("oracle.jdbc.driver.OracleDriver", dbProperty.getDriver());
		assertEquals("jdbc:oracle:thin:@localhost:1521:XE", dbProperty.getUrl());
		assertEquals("KHS", dbProperty.getUser());
		assertEquals("java", dbProperty.getPass());
	}
	
	@Test
	public void propertyPlaceholderTest1() {
		/***Given***/
		

		/***When***/
 
		/***Then***/
		logger.debug("dbProperty.getDriver() : {}", dbPropertySetter.getDriver());
		logger.debug("dbProperty.getUrl() : {}", dbPropertySetter.getUrl());
		logger.debug("dbProperty.getUser() : {}", dbPropertySetter.getUser());
		logger.debug("dbProperty.getPass() : {}", dbPropertySetter.getPass());
		
		assertNotNull(dbPropertySetter);
		
		assertEquals("oracle.jdbc.driver.OracleDriver", dbPropertySetter.getDriver());
		assertEquals("jdbc:oracle:thin:@localhost:1521:XE", dbPropertySetter.getUrl());
		assertEquals("KHS", dbPropertySetter.getUser());
		assertEquals("java", dbPropertySetter.getPass());
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
