package kr.or.ddit.test.board;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.or.ddit.test.board.dao.IBoardDao;
import kr.or.ddit.test.board.service.BoardService;
import kr.or.ddit.test.ioc.CollectionBean;

// 스프링 환경을 이용한 junit Test
// @Test 메소드가 실행되기전에 제공한 조립 설명서를 바탕으로 스프팅 컨테이너 구축
// @Resource을 이용해서 junit클래스의 필드에 스프링 빈을 손쉽게 주입 받을 수 있다

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:kr/or/ddit/spring/ioc/application-context-test.xml")
public class SpringContainerTest {

	private static final Logger logger = LoggerFactory.getLogger(SpringContainerTest.class);
	
	// name : 스프링 빈 이름
	// boardDao 라는 이름의 스프링 빈을 스피링 컨테이너로부터
	// boardDao 필드에 주입
	@Resource(name="boardDao")
	private IBoardDao boardDao;
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@Resource(name="boardServiceCo")
	private BoardService boardServiceCo;
	
	
	
	/**
	 * 
	* Method : boardDaoBeantest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : boardDao 스프링 빈이 정상적으로 생성되는지 테스트
	 */
	@Test
	public void boardDaoBeanTest() {
		/***Given***/
		
		/***When***/
		
		/***Then***/
		assertNotNull(boardDao);
	}
	
	/**
	 * 
	* Method : boardServiceBeanTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : boardService 스프링 빈이 정상적으로 생성되는지 테스트
	 */
	@Test
	public void boardServiceBeanTest() {
		/***Given***/
		

		/***When***/

		/***Then***/
		assertNotNull(boardService);
	}
	
	@Test
	public void boardServiceCoBeanTest() {
		/***Given***/
		
		/***When***/
		String name = boardServiceCo.getBoardNm();
		/***Then***/
		assertEquals("QnA-C", name);
	}
	
	
	
	
	// -------------------------------------------------------------------
	
	// 스프링 빈 scope 테스트를 위한 스트링 빈 주입
	@Resource(name="boardDaoS1")
	private IBoardDao boardDaoS1;
	
	@Resource(name="boardDaoS1")
	private IBoardDao boardDaoS1_1;
	
	@Resource(name="boardDaoS2")
	private IBoardDao boardDaoS2;
	
	@Resource(name="boardDaoS2")
	private IBoardDao boardDaoS2_1;
	
	// -------------------------------------------------------------------
	// boardDaoP 스프링 빈은 prototype scope
	
	@Resource(name="boardDaoP")
	private IBoardDao boardDaoP;
	
	@Resource(name="boardDaoP")
	private IBoardDao boardDaoP2;
	
	/**
	 * 
	* Method : springBeanScopeTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : 스프링 빈 스코프 테스트
	 */
	@Test
	public void springBeanScopeTest() {
		/***Given***/

		/***When***/

		/***Then***/
		// 같은 이름의 스프링 빈 싱글톤 테스트
		// 스프링에서는 스프링 빈 이름을 기준으로 하나의 객체가 생성
		logger.debug("boardDaoS1 : {}", boardDaoS1);
		logger.debug("boardDaoS1_1 : {}", boardDaoS1_1);
		assertEquals(boardDaoS1, boardDaoS1_1);		// 같다
		assertEquals(boardDaoS2, boardDaoS2_1);		// 같다
		
		// 디자인 패턴 관점에서 보면 boardDaoS1 과 boardDaoS2는 같은 클래스로부터 생성되었으므로
		// 같아야 하지만, 스프링 컨테이너에서 관리되는 scope에 개념에 따라 다른 객체로 관리된다.
		assertNotEquals(boardDaoS1, boardDaoS2);	// 다르다
		
		// boardDaoP, boardDaoP2는 boardDaoP라는 이름의 prototype scope를 갖는
		// 스프링 빈. prototype 정의에 따라 두 필드에 주입된 객체는 서로 다른 객체이다.
		logger.debug("boardDaoP : {}", boardDaoP);
		logger.debug("boardDaoP2 : {}", boardDaoP2);
		assertNotEquals(boardDaoP, boardDaoP2);
		
	}
	
	//---------------------------------------------------------------------------------------------
	
	@Resource(name="collectionBean")
	private CollectionBean collectionBean;
	
	/**
	 * 
	* Method : collectionBeanTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : collection 객체의 동적생성-주입 , 자주 사용하지는 않지만 가끔 동적으로 만들어내는 방법이 있다
	 */
	@Test
	public void collectionBeanTest() {
		/***Given***/
		

		/***When***/

		/***Then***/
		logger.debug("collectionBean.getList() : {} ", collectionBean.getList());
		logger.debug("collectionBean.getSet() : {} ", collectionBean.getSet());
		logger.debug("collectionBean.getMap() : {} ", collectionBean.getMap());
		logger.debug("collectionBean.getProperties() : {} ", collectionBean.getProperties());
		
		assertNotNull(collectionBean.getList());
		assertNotNull(collectionBean.getSet());
		assertNotNull(collectionBean.getMap());
		assertNotNull(collectionBean.getProperties());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
