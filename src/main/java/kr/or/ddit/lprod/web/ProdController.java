package kr.or.ddit.lprod.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.service.ILprodService;

@RequestMapping("/prod")
@Controller
public class ProdController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProdController.class);
	
	@Resource(name="lprodService")
	private ILprodService lprodService;
	
	/**
	 * 
	* Method : lprodList
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : lprod 리스트 조회
	 */
	@RequestMapping(path = "lprodList", method = RequestMethod.GET)
	public String lprodList(Model model) {
		
		model.addAttribute("lprodList", lprodService.getLprodList());
		return "prod/lprodList";
	}
	
	/**
	 * 
	* Method : lprodPagingList
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @param page
	* @return
	* Method 설명 : lprod 페이징 리스트 조회
	*/
	@RequestMapping(path = "lprodPagingList", method = RequestMethod.GET)
	public String lprodPagingList(Model model, Page page) {
		
		model.addAttribute("pageVo", page);
		
		Map<String, Object> resultMap = lprodService.getLprodPagingList(page);
		model.addAllAttributes(resultMap);
		
		return "prod/lprodPagingList";
	}
	
	
	@RequestMapping(path = "prodList", method = RequestMethod.GET)
	public String prodList(Model model, String lprod_gu) {
		
		List<Map> prodList = lprodService.getProdList(lprod_gu);

		model.addAttribute("prodList", prodList);
		
		return "prod/prodList";
		
	}
	
	
	
}
