package kr.or.ddit.user.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.user.model.User;
import kr.or.ddit.user.model.UserVaildator;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.util.FileUtil;
import kr.or.ddit.util.model.FileInfo;

@RequestMapping("/user")
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name="userService")
	private IUserService userService;
	
	/**
	 * 
	* Method : userView
	* 작성자 : 202-01
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 상세화면 요청
	 */
	// 사용자가 localhost:8081/spring/user/view.do
	@RequestMapping("view.do")
	public String userView() {
		logger.debug("userController.userView()");
		
		return "user/view";
		
		// prefix + viewName + suffix
		// WEB-INF/views/user/view.jsp
	}
	
	/**
	 * 
	* Method : userList
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : 사용자 전체 리스트 조회
	 */
	@RequestMapping(path = "userList", method = RequestMethod.GET)
	public String userList(Model model) {
		// 사용자 정보 전체 조회
//		List<User> userList = userService.getUserList();
//		model.addAttribute("userList", userList);
		model.addAttribute("userList", userService.getUserList());
		return "user/userList";
	}
	
	/**
	 * 
	* Method : userListOnlyHalf
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : 사용자 리스트 하트 리스트 조회
	 */
	@RequestMapping(path = "userListOnlyHalf", method = RequestMethod.GET)
	public String userListOnlyHalf(Model model) {
							// 이 값을 보내주면 jsp에서 ${userList}로 사용
		model.addAttribute("userList", userService.getUserListOnlyHalf());
		logger.debug("userService.getUserListOnlyHalf() : {}", userService.getUserListOnlyHalf());
		return "user/userListOnlyHalf";
		
	}
	
	/**
	 * 
	* Method : userPagingList
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @param page
	* @param pagesize
	* @return
	* Method 설명 : 사용자 리스트 페이징 리스트 조회
	 */
	@RequestMapping(path = "userPagingList", method = RequestMethod.GET)
	public String userPagingList(Model model, Page page) {				// Model model, int page, int pagesize
		
//		public String userPagingList(@RequestParam(defaultValue = "1") int page,
//									 @RequestParam(defaultValue = "10") int pagesize)  -> 이렇게 사용시 page객체 다시 생성
		
//		page = page == 0 ? 1 : page;
//		pagesize = pagesize == 0 ? 10 : pagesize;
		
//		Page p = new Page(page, pagesize);
		model.addAttribute("pageVo", page);
		
		Map<String, Object> resultMap = userService.getUserPagingList(page);
		model.addAllAttributes(resultMap);
		
//		List<User> userList = (List<User>) resultMap.get("userList");
//		int paginationSize = (Integer)resultMap.get("paginationSize");
		
//		model.addAttribute("userList", userList);
//		model.addAttribute("paginationSize", paginationSize);
		
		return "user/userPagingList";
		
	}
	
	/**
	 * 
	* Method : user
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @param userId
	* @return
	* Method 설명 : 사용자 상세화면 조회
	 */
	@RequestMapping(path = "user")
	public String user(Model model, String userId) {
		
		User user = userService.getUser(userId);
		model.addAttribute("user", user);
		
		return "user/user";
	}
	
	
	@RequestMapping(path = "userPicture")
	public void userPicture(String userId, HttpServletResponse response) throws IOException {
		
		User user = userService.getUser(userId);
		
		ServletOutputStream sos = response.getOutputStream();
		
		File picture = new File(user.getRealfilename());
		FileInputStream fis = new FileInputStream(picture);
		
		byte[] buff = new byte[512];
		int len = 0;
		
		while((len = fis.read(buff, 0, 512)) != -1) {
			sos.write(buff, 0, len);
		}
		
		fis.close();
		sos.close();
	}
	
	
	/**
	 * 
	* Method : userFormView
	* 작성자 : 202-01
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 등록 화면
	 */
	@RequestMapping(path = "userForm", method = RequestMethod.GET)
	public String userFormView() {
		
		return "user/userForm";
	}
	
	
	/**
	 * 
	* Method : userForm
	* 작성자 : 202-01
	* 변경이력 :
	* @param user
	* @param picture
	* @return
	* Method 설명 : 사용자 등록하기 post
	 */
	@RequestMapping(path = "userForm", method = RequestMethod.POST)
	public String userForm(User user, BindingResult result ,@RequestPart("picture") MultipartFile picture) {
		
		// validation
		new UserVaildator().validate(user, result);
		
		if(result.hasErrors()) {
			return "user/userForm";
		// 오류 통과시
		}else {
			
			FileInfo fileInfo = FileUtil.getfileInfo(picture.getOriginalFilename());
			
			// 첨부된 파일이 있을 경우만 업로드 처리
			if(picture.getSize() > 0) {
				try {
					picture.transferTo(fileInfo.getFile());
					user.setFilename(fileInfo.getOriginalFileName());		// originalFileName
					user.setRealfilename(fileInfo.getFile().getPath());
					
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			
			int insertCnt = userService.insertUser(user);
			
			if(insertCnt == 1) {
				return "redirect:/user/user?userId=" + user.getUserId();
			}else {
				return "user/userForm";
			}
		}
	}
	
	
	/**
	 * 
	* Method : userModify
	* 작성자 : 202-01
	* 변경이력 :
	* @param model
	* @param userId
	* @return
	* Method 설명 : 사용자 수정 화면
	 */
	@RequestMapping(path = "userModify", method = RequestMethod.GET)
	public String userModify(Model model, String userId) {
		
		User user = userService.getUser(userId);
		model.addAttribute("user", user);
		
		return "user/userModify";
	}
	
	
	@RequestMapping(path = "userModify", method = RequestMethod.POST)
	public String userModify(User user, BindingResult result ,@RequestPart("picture") MultipartFile picture) {
		
//      userModify.jsp에서 input hidden 으로 값을 넘겨준다 filename, realfilename		
//		User userVo = userService.getUser(user.getUserId());
//		
//		user.setFilename(userVo.getFilename());
//		user.setRealfilename(userVo.getRealfilename());
		
		// validation
		new UserVaildator().validate(user, result);
		
		if(result.hasErrors()) {
			
			return "user/userModify";
			
		// 오류 통과시
		}else {
			
			FileInfo fileInfo = FileUtil.getfileInfo(picture.getOriginalFilename());
			
			// 첨부된 파일이 있을 경우만 업로드 처리
			if(picture.getSize() > 0) {
				try {
					picture.transferTo(fileInfo.getFile());
					user.setFilename(fileInfo.getOriginalFileName());		// originalFileName
					user.setRealfilename(fileInfo.getFile().getPath());
					
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			
			int updateCnt = userService.updateUser(user);
			
			if(updateCnt == 1) {
				return "redirect:/user/user?userId=" + user.getUserId();
			}else {
				return "user/userModify";
			}
		}
	}
	
	
	
}
