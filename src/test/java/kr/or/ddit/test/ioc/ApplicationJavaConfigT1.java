package kr.or.ddit.test.ioc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserService;

// 자바클래스를 스프링 설정파일로 만드는 방법
// 1. @Configuration 어노테이션 클래스에 적용
// 2. @Bean 어노테이션이 적용된 메소드를 선언 : 리턴되는 값이 스프링 빈

@Configuration
public class ApplicationJavaConfigT1 {
	
	// userDao, userService를 스프링으로 생성
	// 주의 : 기본적으로 메소드이름이 스프링 빈의 이름이 된다
	// 기본 이름이 아닌 별도의 이름으로 부여하고 싶다면 @Bean어노테이션의 name속성에 값을 설정
	// @Bean spring에서 관리하기 때문에 한번만 실행한다
	
	@Bean
	public IUserDao userDao() {
		return new UserDao();
	}
	
	@Bean
	public IUserService userService() {
		return new UserService(userDao());
	}
	
}
