package kr.or.ddit.test.lprod.service;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig1;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.lprod.service.ILprodService;


public class LprodServiceTest extends RootTestConfig1{
	
	 private static final Logger logger = LoggerFactory.getLogger(LprodServiceTest.class);
	 
	 @Resource(name="lprodService")
	 private ILprodService lprodService;
	   
	 @Test
	 public void getLprodPagingListTest() {
		 /***Given***/
		  Page page = new Page();
	      page.setPage(1);
	      page.setPagesize(5);

	      /***When***/
	      Map<String, Object> resultMap = lprodService.getLprodPagingList(page);
	      List<LprodVo> lprodList = (List<LprodVo>) resultMap.get("lprodList");
	      int paginationSize = (Integer)resultMap.get("paginationSize");
	      
	      logger.debug("lprodList.size() : {} " , lprodList.size());
	      logger.debug("lprodList.get(0).getLprod_gu() : {} " , lprodList.get(0).getLprod_gu());
	      logger.debug("paginationSize : {} " , paginationSize);
	      
	      /***Then***/
	      assertEquals(5, lprodList.size());
	      assertEquals("P101", lprodList.get(0).getLprod_gu());
	      assertEquals(2, paginationSize);
	      
	 }
	 
	 @Test
	 public void getLprodListTest() {
		 /***Given***/
		

		/***When***/
		List<LprodVo> lprodList = lprodService.getLprodList();
		/***Then***/
		assertTrue(lprodList.size() == 10);
	 }
	 
	 @Test
	 public void getProdListTest() {
		 /***Given***/
		String prod_lgu = "P101";

		/***When***/
		List<Map> prodList = lprodService.getProdList(prod_lgu);
		
		/***Then***/
		assertEquals(6, prodList.size());
		
	 }
	 
	 
}
