package kr.or.ddit.test.board.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.test.board.dao.IBoardDao;

public class BoardService implements IBoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardService.class);
	
	// boardDao 구현체를 설정할 수 있는 방법
	// 1. 직접 만들기(생성자에서 new BoardDao())
	// 2. 외부에서 주입
	//		.setter (setBoardDao(IBoardDao boardDao))
	//		.consturctor (public BoardService(IBoardDao boardDao))
	
	private IBoardDao boardDao;
	private String boardNm;
	
	public BoardService() {

	}
	
	// 생성자 인덱스 2개를 만들어줘야 한다.
	public BoardService(IBoardDao boardDao, String boardNm) {
		this.boardDao = boardDao;	// 인덱스 0번째
		this.boardNm = boardNm;		// 인덱스 1번째
	}
	
	@Override
	public void getBoardList() {
		logger.debug("boardNm : {}", boardNm);
		boardDao.getBoardList();
	}
	
	// getter, setter 생성
	public IBoardDao getBoardDao() {
		return boardDao;
	}

	public void setBoardDao(IBoardDao boardDao) {
		this.boardDao = boardDao;
	}

	public String getBoardNm() {
		return boardNm;
	}

	public void setBoardNm(String boardNm) {
		this.boardNm = boardNm;
	}
	
	
	
}
