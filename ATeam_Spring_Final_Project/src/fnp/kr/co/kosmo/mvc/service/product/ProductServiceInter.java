package fnp.kr.co.kosmo.mvc.service.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ProductServiceInter {
	
	/**
	 * 07-31 YoungJin
	 * COUPLE SHOP 메뉴 클릭 시 보여줄 PRODUCT LIST 조회
	 * @return
	 */
	public Map<String, Object> getProductList(HttpServletRequest request);
	
	public Map<String, Object> getProductDetail(int pro_index);
	
}
