package fnp.kr.co.kosmo.mvc.dto;

public class ApplicationCoupleDTO {

	private int user_from_index;
	private int user_to_index;
	private String ac_title;
	private String ac_content;

	public int getUser_from_index() {
		return user_from_index;
	}

	public void setUser_from_index(int user_from_index) {
		this.user_from_index = user_from_index;
	}

	public int getUser_to_index() {
		return user_to_index;
	}

	public void setUser_to_index(int user_to_index) {
		this.user_to_index = user_to_index;
	}

	public String getAc_title() {
		return ac_title;
	}

	public void setAc_title(String ac_title) {
		this.ac_title = ac_title;
	}

	public String getAc_content() {
		return ac_content;
	}

	public void setAc_content(String ac_content) {
		this.ac_content = ac_content;
	}

}
