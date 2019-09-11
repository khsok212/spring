package kr.or.ddit.user.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.user.model.User;

public interface IUserService {
	
	/**
	 * 
	* Method : getUserList
	* 작성자 : 202-01
	* 변경이력 :
	* @return
	* Method 설명 : 회원 전체 조회
	 */
	List<User> getUserList();
	
	public User getUser(String userId);

	public List<User> getUserListOnlyHalf();

	/**
	 * 
	* Method : getUserPagingList
	* 작성자 : 202-01
	* 변경이력 :
	* @param sqlSession
	* @param page
	* @return
	* Method 설명 : 사용자 페이징 리스트 조회
	 */
	public Map<String, Object> getUserPagingList(Page page);
	
	public int insertUser(User user);
	
	public int deleteUser(String userId);
	
	public int updateUser(User user);
}
