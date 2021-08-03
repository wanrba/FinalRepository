package fnp.kr.co.kosmo.mvc.service.advice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fnp.kr.co.kosmo.mvc.dto.AdviceDTO;

public interface AdviceServiceInter {
	
	public List<AdviceDTO> getAdviceList(HttpServletRequest request);

}
