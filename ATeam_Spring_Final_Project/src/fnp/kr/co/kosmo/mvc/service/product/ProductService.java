package fnp.kr.co.kosmo.mvc.service.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fnp.kr.co.kosmo.mvc.dao.product.ProductDaoInter;
import fnp.kr.co.kosmo.mvc.dto.CategoryDTO;
import fnp.kr.co.kosmo.mvc.dto.PageDTO;
import fnp.kr.co.kosmo.mvc.dto.ProductDTO;

@Service
public class ProductService implements ProductServiceInter{

	
	@Autowired
	private ProductDaoInter productDaoInter;
	
	/**
	 * 07-31 YoungJin
	 * COUPLE SHOP 메뉴 클릭 시 보여줄 PRODUCT LIST 조회
	 * @return
	 */
	@Override
	public Map<String, Object> getProductList(HttpServletRequest request) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		


		
		
		int spage = 1;
		String nowPage = request.getParameter("nowPage");
		String cntPerPage = request.getParameter("cntPerPage");
		if (nowPage != null && !nowPage.equals("")) {
			spage = Integer.parseInt(nowPage);
		}
		if (cntPerPage == null) {
			cntPerPage = "9";// 라인 수
		}
		
		if(request.getParameter("category_name") != null) {
			map.put("category_name", request.getParameter("category_name"));
		}
		
		if(request.getParameter("searchKeyword") != null) {
			map.put("searchKeyword", request.getParameter("searchKeyword").toLowerCase());
		}
		
		int total = productDaoInter.getTotalCount(map);
		PageDTO pDto = new PageDTO(total, spage, Integer.parseInt(cntPerPage));

		map.put("paging", pDto);
		
		/**
		 * 07-31 YoungJin
		 * Couple Shop에 보여줄 카테고리 목록 조회
		 * 후에 getProductList와 합칠 예정
		 */
		List<CategoryDTO> cList = productDaoInter.getCategoryList();
		
		List<ProductDTO> pList = productDaoInter.getProductList(map);
		System.out.println(pDto);
		resultMap.put("paging", pDto);
		resultMap.put("categoryList", cList);
		resultMap.put("productList", pList);
		return resultMap;
	}

	@Override
	public Map<String, Object> getProductDetail(int pro_index) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<CategoryDTO> cList = productDaoInter.getCategoryList();
		map.put("categoryList", cList);
		map.put("detail", productDaoInter.getProductDetail(pro_index));
		
		return map;
	}
	
}
