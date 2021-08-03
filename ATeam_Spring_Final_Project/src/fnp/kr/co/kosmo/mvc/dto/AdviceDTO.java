package fnp.kr.co.kosmo.mvc.dto;

public class AdviceDTO {

	private int advice_index;
	private int advice_start_day;
	private int advice_start_month;
	private int advice_start_year;
	private String advice_title;
	private String advice_img;
	private String advice_content;

	public int getAdvice_index() {
		return advice_index;
	}

	public void setAdvice_index(int advice_index) {
		this.advice_index = advice_index;
	}

	public int getAdvice_start_day() {
		return advice_start_day;
	}

	public void setAdvice_start_day(int advice_start_day) {
		this.advice_start_day = advice_start_day;
	}

	public int getAdvice_start_month() {
		return advice_start_month;
	}

	public void setAdvice_start_month(int advice_start_month) {
		this.advice_start_month = advice_start_month;
	}

	public int getAdvice_start_year() {
		return advice_start_year;
	}

	public void setAdvice_start_year(int advice_start_year) {
		this.advice_start_year = advice_start_year;
	}

	public String getAdvice_title() {
		return advice_title;
	}

	public void setAdvice_title(String advice_title) {
		this.advice_title = advice_title;
	}

	public String getAdvice_img() {
		return advice_img;
	}

	public void setAdvice_img(String advice_img) {
		this.advice_img = advice_img;
	}

	public String getAdvice_content() {
		return advice_content;
	}

	public void setAdvice_content(String advice_content) {
		this.advice_content = advice_content;
	}

}
