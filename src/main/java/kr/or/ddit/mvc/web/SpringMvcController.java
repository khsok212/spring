package kr.or.ddit.mvc.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import kr.or.ddit.exception.NoFileException;
import kr.or.ddit.mvc.model.Main;
import kr.or.ddit.user.model.User;
import kr.or.ddit.user.model.UserVaildator;
import kr.or.ddit.util.FileUtil;
import kr.or.ddit.util.model.FileInfo;


// rangers()를 한번만 불러오도록 한다
@SessionAttributes("rangers")
@RequestMapping("mvc")
@Controller
public class SpringMvcController {
	
	private static final Logger logger = LoggerFactory.getLogger(SpringMvcController.class);
	
	@javax.annotation.Resource(name = "jsonView")
	private View jsonView;
	
	
	// @RequestMapping이 붙은 메소드가 실행되기전에 @ModelAttribute 메소드가 먼저 실행되고
	// 해당 메소드가 리턴하는 값을 Model객체에 자동으로 넣어준다
	// 해당 컨트롤러에 대해서만 처리
	@ModelAttribute("rangers")
	public List<String> rangers(){
		
		logger.debug("rangers()");
		
		// db조회 작업 : 부하가 생각보다 클수 있다.
		List<String> rangers = new ArrayList<String>();
		rangers.add("brown");
		rangers.add("sally");
		rangers.add("cony");
		
		return rangers;
	}
	
	/**
	 * 
	* Method : view
	* 작성자 : 202-01
	* 변경이력 :
	* @return
	* Method 설명 : mvc어노테이션 테스트 view
	 */
	@RequestMapping("view")
	public String view(Model model, 
							@ModelAttribute("rangers") List<String> rangers2,
							@SessionAttribute(name = "S_USERVO", required = false) User user) {
		
		List<String> rangers = (List<String>) model.asMap().get("rangers");
		
		/*
		 	[메소드 인자]에 사용된 @ModelAttribute
		 	[메소드]에 의해 Model에 설정된 속성 값을 메소드 인자에 주입
		 	 만약, Model에 해당 속성이 없을 경우 빈 객체를 생성해서 Model객체에 넣어준다
		 	-- Model객체에 추가되어 있다
		 */
		
		logger.debug("rangers : {}", rangers);
		logger.debug("rangers2 : {}", rangers2);
		logger.debug("user : {}", user);
		
		return "mvc/view";
	}
	
	/**
	 * 
	* Method : requestParam
	* 작성자 : 202-01
	* 변경이력 :
	* @param user
	* @param page
	* @return
	* Method 설명 : @RequestParam 어노테이션 테스트
	 */
	@RequestMapping("requestParam")			  // 값이 없을 때 기본값 설정
	public String requestParam(@RequestParam(name = "userId") String user, 
							   @RequestParam(defaultValue = "10") int page) {
		
		logger.debug("userId : {}", user);
		logger.debug("page : {}", page);
		
		return "mvc/view";
	}
	
	/**
	 * 
	* Method : requestPath
	* 작성자 : 202-01
	* 변경이력 :
	* @param subpath
	* @return
	* Method 설명 : 선택에 따른 path변경
	 */
	@RequestMapping("/path/{subpath}")
	public String requestPath(@PathVariable(name = "subpath") String subpath) {
		logger.debug("subpath : {}", subpath);
		return "mvc/view";
	}
	
	/**
	 * 
	* Method : upload
	* 작성자 : 202-01
	* 변경이력 :
	* @param userId
	* @param partFile
	* @return
	* Method 설명 : 파일 업로드
	 */
	@RequestMapping("upload")
	public String upload(String userId, @RequestPart("picture") MultipartFile partFile) {
		
		logger.debug("userId : {}", userId);
		logger.debug("partFile.getName() : {}", partFile.getName());
		logger.debug("partFile.getOriginalFilename() : {}", partFile.getOriginalFilename());
		
		// 업로드 되는 시점의 년/월 폴더를 생성해주고, 파일경로와 파일정보를 FileInfo 객체에 담아 리턴
		FileInfo fileInfo = FileUtil.getfileInfo(partFile.getOriginalFilename());
		
		try {
			partFile.transferTo(fileInfo.getFile());
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return "mvc/view";
	}
	
	@RequestMapping("multiParameter")
	public String multiPatameter(String userId, 
								 @RequestParam("userId") List<String> userIdList,
								 Main main) {
		
		logger.debug("userId : {}", userId);
		logger.debug("userIdList : {}, {}, {}", userIdList, userIdList.get(0), userIdList.get(1));
		logger.debug("main : {}", main);
		
		return "mvc/view";
	}
	
	@RequestMapping("redirect")
	public String redirect(String userId, Model model, HttpSession session,
						   RedirectAttributes reAttr) {
		// redirect는 model(request로 보낼 수 없다) 
		// model.addAttribute("userId", userId);
		
		// jsp에서 remove해줘야 한다.
		// session.setAttribute("userId", userId);
		
		// redirect시 최초 1회에 한해 해당 속성값을 가져오고, 자동적으로 세션에서 해당 속성을 제거한다.
		reAttr.addFlashAttribute("userId", userId);
		
		// http://localhost:8081/spring/login?alias=bear (redirect시 파라미터로 전달)
		reAttr.addAttribute("alias", "bear");
		
		return "redirect:/login";
		// redirect : "redirect : url주소";
		// forward : "forward : url주소";		다른 컨트롤러로 forward
	}
	
	@RequestMapping("validator")
	public String validator(User user, BindingResult result) {
		// form객체(command, vo)의 검증 결과를 담는 bindingResult 객체는
		// 반드시 메소드 인자 순서에서 form 객체 바로 뒤에 위치해야 한다
		
		new UserVaildator().validate(user, result);
		if(result.hasErrors())
			logger.debug("hasErrors()");
		else 
			logger.debug("no error");
		
		logger.debug("user : {}", user);
		return "mvc/view";
	}
	
	
	@RequestMapping("jsr303")
	public String jsr303(@Valid User user, BindingResult result) {
		
		if(result.hasErrors())
			logger.debug("hasErrors()");
		else 
			logger.debug("no error");
		
		return "mvc/view";
	}
	
	@RequestMapping("throwException")
	public String throwException() {
		
		int a = 10/0;
		
		return "mvc/view";
	}
	
	
	@RequestMapping("responseStatus")
	public String responseStatus() throws NoFileException{
		
		// 인위적으로 존재하지 않는 파일에 접근하여
		// IOException이 발생하도록 작성
		// IOException을 catch하여 우리가 작성한 NoFileException으로 새롭게 예외 throw
		// NoFileException에 설정한 @ResponseStatus에 의해
		// 500상태코드가 아닌 404상태코드로 응답 생성
		Resource resource = new ClassPathResource("kr/or/ddit/config/mybatis/mybatis-config-nofile.xml");
		
		logger.debug("responseStatus()");
		
		try {
			resource.getInputStream();
		} catch (IOException e) {
			throw new NoFileException();
		}
		
		return "mvc/view";
	}
	
	@RequestMapping("error500")
	public String error500() {
		throw new NullPointerException();
	}
	
	
	@RequestMapping("jsonView")
	public String jsonView(Model model) {
		
		List<String> rangers = new ArrayList<String>();
		rangers.add("brown");
		rangers.add("cony");
		rangers.add("sally");
		
		model.addAttribute("rangers", rangers);
		
		return "jsonView";
	}
	
	
	@RequestMapping("jsonView2")
	public View jsonView2(Model model) {
		
		List<String> rangers = new ArrayList<String>();
		rangers.add("brown");
		rangers.add("cony");
		rangers.add("sally");
		
		model.addAttribute("rangers", rangers);
		
		return jsonView;
//		return new MappingJackson2JsonView();
	}
	
	
	@RequestMapping("fileDownloadView")
	public String fileDownloadView(Model model, String pictureName) {
		model.addAttribute("pictureName", pictureName);
		return "fileDownloadView";
	}
	
	@RequestMapping("i18n")
	public String i18n() {
		return "mvc/view";
	}
	
	
	
	
	
}
