package fnp.kr.co.kosmo.mvc.dao.product;

import java.util.List;
import java.util.Map;

import fnp.kr.co.kosmo.mvc.dto.CategoryDTO;
import fnp.kr.co.kosmo.mvc.dto.ProductDTO;

public interface ProductDaoInter {
	
	public int getTotalCount(Map<String, Object> map);
	
	/**
	 * 07-31 YoungJin
	 * COUPLE SHOP 메뉴 클릭 시 보여줄 PRODUCT LIST 조회
	 * @return
	 */
	public List<ProductDTO> getProductList(Map<String, Object> map);
	
	/**
	 * 07-31 YoungJin
	 * Couple Shop에 출력할 카테고리 목록 조회 (association으로 변경 필요)
	 */
	public List<CategoryDTO> getCategoryList();
	
	public ProductDTO getProductDetail(int pro_index);
}
