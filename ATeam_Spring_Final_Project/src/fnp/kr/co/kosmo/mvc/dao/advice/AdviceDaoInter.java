package fnp.kr.co.kosmo.mvc.dao.advice;

import java.util.List;
import java.util.Map;

import fnp.kr.co.kosmo.mvc.dto.AdviceDTO;

public interface AdviceDaoInter {
	
	public List<AdviceDTO> getAdviceList(Map<String, String> map);

}
