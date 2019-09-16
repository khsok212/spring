package kr.or.ddit.test.user.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.test.user.repository.UserDaoTest;
import kr.or.ddit.user.model.User;
import kr.or.ddit.user.service.IUserService;

public class UserServiceTest extends RootTestConfig{

	private static final Logger logger = LoggerFactory.getLogger(UserDaoTest.class);
	
	private String userId = "KKKTEST";
	
	@Resource(name="userService")
	private IUserService userService;
	
	@Test
	public void getUserListTest() {
		/***Given***/
		

		/***When***/
		List<User> userList = userService.getUserList();
		/***Then***/
		assertTrue(userList.size() >= 105);
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
		User userVo = userService.getUser(userId);
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
		List<User> userList = userService.getUserListOnlyHalf();
		
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
		Map<String, Object> resultMap = userService.getUserPagingList(page);
		List<User> userList = (List<User>) resultMap.get("userList");
		int paginationSize = (Integer)resultMap.get("paginationSize");
		
		logger.debug("userList.get(0).getUserId() : {}", userList.get(0).getUserId());
		logger.debug("userList.size() : {}", userList.size());
		
		/***Then***/
		assertEquals(10, userList.size());
		assertEquals("brown", userList.get(0).getUserId());
	}
	
	  @Test
	   public void ceilingTest() {
		   /***Given***/
		   int totalCnt = 107;
		   int pagesize = 10;
	
		   /***When***/
		   double paginationSize = Math.ceil((double)totalCnt / pagesize);
		   
		   /***Then***/
		   assertEquals(11, (int)paginationSize);
	   }
	
	
	
	@Test
	public void insertUserTest() throws ParseException {
		/***Given***/
		User user = new User();
		
		user.setUserId(userId);
		user.setUserNm("케이테스트");
		user.setPass("kTest1234");
		
		
		user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
	
		
		user.setAlias("곰테스트");
		user.setAddr1("대전광역시 중구 중앙로 76");
		user.setAddr2("영민빌딩 2층 DDIT");
		user.setZipcode("34940");
		user.setFilename("11");
		user.setRealfilename("11");
		
		/***When***/
		int insertCnt = userService.insertUser(user);
		
		/***Then***/
		assertEquals(1, insertCnt);
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
		int UpdateCnt = userService.updateUser(user);
		
		/***Then***/
		assertEquals(1, UpdateCnt);
	}
	

}
