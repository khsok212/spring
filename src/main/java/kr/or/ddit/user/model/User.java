package kr.or.ddit.user.model;

public class User {
	
	private String userId;	//사용자 아이디
	private String alias;  	//별명
	private String userNm;	//사용자 이름
	
	public User() {}
	
	public User(String userId) {
		this.userId = userId;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", alias=" + alias + ", userNm=" + userNm + "]";
	}
	
	
	
}
