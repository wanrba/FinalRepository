package fnp.kr.co.kosmo.mvc.controller.product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fnp.kr.co.kosmo.mvc.service.product.ProductServiceInter;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceInter productServiceInter;
	
	@RequestMapping(value = {"/productList.do", "/productDetail.do"})
	public ModelAndView productForm(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("product/productList");
		String mappingValue = request.getHttpServletMapping().getMatchValue();
		if(mappingValue.equals("productList")) {
			mav.addObject("result", productServiceInter.getProductList(request));
		} else {
			mav.addObject("result", productServiceInter.getProductDetail(Integer.parseInt(request.getParameter("pro_index"))));
		}
		return mav;
	}

}
