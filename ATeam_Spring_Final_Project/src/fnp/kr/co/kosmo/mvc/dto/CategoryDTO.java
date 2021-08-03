package fnp.kr.co.kosmo.mvc.dto;

import java.util.List;

public class CategoryDTO {

	private String category_name;
	private List<ProductDTO> productList;

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public List<ProductDTO> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductDTO> productList) {
		this.productList = productList;
	}

}
