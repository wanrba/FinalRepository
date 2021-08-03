package fnp.kr.co.kosmo.mvc.dto;

public class ProductDTO {

	private int pro_index; // 상품 인덱스
	private String pro_name; // 상품명
	private String pro_category; // 상품 카테고리
	private int pro_beforePrice; // 상품 원가
	private int pro_afterPrice; // 상품 할인가
	private int pro_discount; // 상품 할인율
	private String pro_offDay; // 할인 마감일
	private String pro_discription; // 상품 설명
	private String pro_img; // 상품 이미지
	private float pro_rating; // 상품 평균평점
	private String pro_rdate; // 상품 등록일자

	public int getPro_index() {
		return pro_index;
	}

	public void setPro_index(int pro_index) {
		this.pro_index = pro_index;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_category() {
		return pro_category;
	}

	public void setPro_category(String pro_category) {
		this.pro_category = pro_category;
	}

	public int getPro_beforePrice() {
		return pro_beforePrice;
	}

	public void setPro_beforePrice(int pro_beforePrice) {
		this.pro_beforePrice = pro_beforePrice;
	}

	public int getPro_afterPrice() {
		return pro_afterPrice;
	}

	public void setPro_afterPrice(int pro_afterPrice) {
		this.pro_afterPrice = pro_afterPrice;
	}

	public int getPro_discount() {
		return pro_discount;
	}

	public void setPro_discount(int pro_discount) {
		this.pro_discount = pro_discount;
	}

	public String getPro_offDay() {
		return pro_offDay;
	}

	public void setPro_offDay(String pro_offDay) {
		this.pro_offDay = pro_offDay;
	}

	public String getPro_discription() {
		return pro_discription;
	}

	public void setPro_discription(String pro_discription) {
		this.pro_discription = pro_discription;
	}

	public String getPro_img() {
		return pro_img;
	}

	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}

	public float getPro_rating() {
		return pro_rating;
	}

	public void setPro_rating(float pro_rating) {
		this.pro_rating = pro_rating;
	}

	public String getPro_rdate() {
		return pro_rdate;
	}

	public void setPro_rdate(String pro_rdate) {
		this.pro_rdate = pro_rdate;
	}

}
