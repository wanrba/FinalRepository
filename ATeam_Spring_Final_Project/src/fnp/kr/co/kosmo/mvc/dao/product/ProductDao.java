package fnp.kr.co.kosmo.mvc.dao.product;

import java.util.List;
import java.util.Map;

import org.mybatis.logging.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fnp.kr.co.kosmo.mvc.dto.CategoryDTO;
import fnp.kr.co.kosmo.mvc.dto.PageDTO;
import fnp.kr.co.kosmo.mvc.dto.ProductDTO;

@Repository
public class ProductDao implements ProductDaoInter{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public int getTotalCount(Map<String, Object> map) {
		return sqlSessionTemplate.selectOne("product.getTotalCount", map);
	}
	
	/**
	 * 07-31 YoungJin
	 * COUPLE SHOP 메뉴 클릭 시 보여줄 PRODUCT LIST 조회
	 * @return
	 */
	@Override
	public List<ProductDTO> getProductList(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("product.getProductList", map);
	}

	/**
	 * 07-31 YoungJin
	 * Couple Shop에 출력할 카테고리 목록 조회 (association으로 변경 필요)
	 */
	@Override
	public List<CategoryDTO> getCategoryList() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("product.getCategoryList");
	}

	@Override
	public ProductDTO getProductDetail(int pro_index) {
		return sqlSessionTemplate.selectOne("product.getProductDetail", pro_index);
	}

}
