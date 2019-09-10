package kr.or.ddit.test.board;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import kr.or.ddit.test.board.dao.IBoardDao;
import kr.or.ddit.test.board.service.IBoardService;

public class Main {
	public static void main(String[] args) {
		// 기존 객체 생성 방법 : new
//		IBoardDao dao = new BoardDao();
//		IBoardService boardService = new BoardService();
//		boardService.setBoardDao(dao);
		
		
		// 1. spring ioc 컨테이너를 이용한 객체 생성
		// 객체를 만드는 설명서를 spring 한테 위임 (실제로는 안 쓰인다. 직접 생성하는 것을 보여주기 위한 예제) , ★ 리스너를 통해!!! 다시 한다.
		ApplicationContext context 
					= new ClassPathXmlApplicationContext("classpath:kr/or/ddit/spring/ioc/application-context-test.xml");
		
		// 2. 스프링 컨테이너(= ioc컨테이너)로부터 원하는 객체를 요청 : DL (Dependency Lookup)
		// kr/or/ddit/spring/ioc/application-context-test.xml 에서 정해준 "정해준 이름 호출"
		// ★주요하게 봐야할 점 : IBoardDao객체를 만든적이 없다
		IBoardDao cDao = (IBoardDao) context.getBean("boardDao");
		cDao.getBoardList();
		
		IBoardService cService = context.getBean("boardService", IBoardService.class);
		cService.getBoardList();
		
		IBoardService cServiceCo = context.getBean("boardServiceCo", IBoardService.class);
		cServiceCo.getBoardList();
		
	}
}
