package kr.or.ddit.user.service;

import java.util.List;

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
}
