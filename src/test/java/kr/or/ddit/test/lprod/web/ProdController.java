package kr.or.ddit.test.lprod.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.WebTestConfig;

public class ProdController extends WebTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(ProdController.class);
	
	@Test
	public void pageTest() {
		Page page = new Page();
		
		logger.debug("page : {}", page);
	}
	
	/**
	 * 
	* Method : lprodListTest
	* 작성자 : 202-01
	* 변경이력 :
	* @throws Exception
	* Method 설명 : lprod 리스트 조회 테스트
	 */
	@Test
	public void lprodListTest() throws Exception {
		/***Given***/
		

		/***When***/
		mockMvc.perform(get("/prod/lprodList"))
					.andExpect(model().attributeExists("lprodList"))
					.andExpect(view().name("prod/lprodList"));
		/***Then***/
	}
	
	@Test
	public void lprodPagingListTest() throws Exception {
		/***Given***/
		

		/***When***/
		mockMvc.perform(get("/prod/lprodPagingList").param("page", "1")
												    .param("pagesize", "5"))	
								.andExpect(view().name("prod/lprodPagingList"));
		/***Then***/
	}
	
}
