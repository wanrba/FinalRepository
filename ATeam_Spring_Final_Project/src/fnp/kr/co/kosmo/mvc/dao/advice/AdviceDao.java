package fnp.kr.co.kosmo.mvc.dao.advice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fnp.kr.co.kosmo.mvc.dto.AdviceDTO;

@Repository
public class AdviceDao implements AdviceDaoInter{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<AdviceDTO> getAdviceList(Map<String, String> map) {
		return sqlSessionTemplate.selectList("advice.getAdviceList", map);
	}

}
