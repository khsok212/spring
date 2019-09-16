package kr.or.ddit.lprod.repository;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.model.LprodVo;

@Repository
public class LprodDao implements ILprodDao {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<LprodVo> getLprodList() {
		
		List<LprodVo> lprodList = sqlSession.selectList("lprod.getLprodList");
		return lprodList;
	}

	@Override
	public List<Map> getProdList(String prod_lgu) {
		List<Map> prodList = sqlSession.selectList("lprod.getProdList", prod_lgu);
		return prodList;
	}

	@Override
	public List<LprodVo> getProdPagingList(Page page) {
		return sqlSession.selectList("lprod.getLprodPagingList", page);
	}

	@Override
	public int getLprodTotalCnt() {
		return sqlSession.selectOne("lprod.getLprodTotalCnt");
	}
	
}
