package kr.or.ddit.test.user.repository;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:kr/or/ddit/config/spring/context-root.xml",
								"classpath:kr/or/ddit/config/spring/context-datasource.xml",
								"classpath:kr/or/ddit/config/spring/context-transaction.xml"})
public class UserDaoTest {
	// userDao를 테스트하기 위해 필요한거
	// db연결, 트랜잭션, dao
	
	private static final Logger logger = LoggerFactory.getLogger(UserDaoTest.class);
	
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
//	@Before
//	public void setup() {
//		userDao.deleteUser(userId);
//	}
	
	/**
	 * 
	* Method : getUserListTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : 회원 전체 조회
	 */
	@Test
	public void getUserListTest() {
		/***Given***/
		
		/***When***/
		List<User> userList = userDao.getUserList();
		logger.debug("userList : {}" , userList);
		logger.debug("userList.size() : {}", userList.size());
		/***Then***/
		assertTrue(userList.size() >= 107);
	}
	
	/**
	* Method : getUserTest
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : 사용자 정보 조회 테스트
	*/
	
	@Test
	public void getUserTest() {
		/***Given***/
		String userId = "brown";
		
		/***When***/
		User userVo = userDao.getUser(userId);
		logger.debug("userVo.getUserNm() : {}", userVo.getUserNm());
		logger.debug("userVo.getUserNm() : {}", userVo.getPass());
		/***Then***/
		assertEquals("브라운", userVo.getUserNm());
		assertEquals("c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44", userVo.getPass());
		
	}
	
	@Test
	public void getUserOnlyHalfTest() {
		/***Given - 상황 ***/

		/***When - 메서드 쿼리 ***/
		List<User> userList = userDao.getUserListOnlyHalf();
		
		/***Then - 기술 ***/
		assertEquals(50, userList.size());
	}
	
	/**
	* 
	* Method : getUserPagingList
	* 작성자 : 202-01
	* 변경이력 :
	* Method 설명 : 사용자 페이징 리스트 조회 테스트
	 */
	@Test
	public void getUserPagingListTest() {
		/***Given***/
		Page page = new Page();
		page.setPage(1);
		page.setPagesize(10);
		
		/***When***/
		List<User> userList = userDao.getUserPagingList(page);
		logger.debug("userList.get(0).getUserId() : {}", userList.get(0).getUserId());
		logger.debug("userList.size() : {}", userList.size());
		/***Then***/
		assertEquals(10, userList.size());
		assertEquals("brown", userList.get(0).getUserId());
	}
	
	@Test
	public void getUserTotalCnt() {
		/***Given***/
		

		/***When***/
		int totalCnt = userDao.getUserTotalCnt();
		/***Then***/
		assertEquals(107, totalCnt);
	}
	
	
	
	@Test
	public void insertUserTest() throws ParseException {
		/***Given***/
		User user = new User();
		
		String userId = "testest";
		
		user.setUserId(userId);
		user.setUserNm("케이테스트");
		user.setPass("kTest1234");
		
		try {
			user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
		} catch (java.text.ParseException e) {
			e.printStackTrace();
		}
		
		user.setAlias("곰테스트");
		user.setAddr1("대전광역시 중구 중앙로 76");
		user.setAddr2("영민빌딩 2층 DDIT");
		user.setZipcode("34940");
		user.setFilename("11");
		user.setRealfilename("11");
		
		/***When***/
		int insertCnt = userDao.insertUser(user);
		
		/***Then***/
		assertEquals(1, insertCnt);
		userDao.deleteUser(userId);
	}
	
	@Test
	public void updateUserTest() {
		/***Given***/
		User user = new User();
		
		String userId = "kTest";
		
		user.setUserId(userId);
		user.setUserNm("케이테스트");
		user.setPass("kTest1234");
		
		try {
			user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
		} catch (java.text.ParseException e) {
			e.printStackTrace();
		}
		
		user.setAlias("곰테스트");
		user.setAddr1("대전광역시 중구 중앙로 76");
		user.setAddr2("영민빌딩 2층 DDIT");
		user.setZipcode("34940");
		user.setFilename("11");
		user.setRealfilename("11");
		
		/***When***/
		int UpdateCnt = userDao.updateUser(user);
		
		/***Then***/
		assertEquals(1, UpdateCnt);
	}
	
	
}
