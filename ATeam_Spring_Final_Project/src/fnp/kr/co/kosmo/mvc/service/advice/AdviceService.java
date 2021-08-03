package fnp.kr.co.kosmo.mvc.service.advice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fnp.kr.co.kosmo.mvc.dao.advice.AdviceDaoInter;
import fnp.kr.co.kosmo.mvc.dto.AdviceDTO;

@Service
public class AdviceService implements AdviceServiceInter{

	@Autowired
	private AdviceDaoInter adviceDaoInter;
	
	@Override
	public List<AdviceDTO> getAdviceList(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		
		if(request.getParameter("advice_start_day") != null && request.getParameter("advice_start_month") != null) {
			map.put("advice_start_day", request.getParameter("advice_start_day"));
			map.put("advice_start_month", request.getParameter("advice_start_month"));
		}
		
		if(request.getParameter("advice_start_month") != null && request.getParameter("advice_start_year") != null) {
			map.put("advice_start_day", request.getParameter("advice_start_day"));
			map.put("advice_start_year", request.getParameter("advice_start_year"));
		}
		
		if(request.getParameter("advice_start_year") != null) {
			map.put("advice_start_year", request.getParameter("advice_start_year"));
		}
		
		return adviceDaoInter.getAdviceList(map);
	}

}
