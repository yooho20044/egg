package egg.finalproject.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminOrderDAO {
	
	@Autowired
	private SqlSession session;
	
	// 주문 수 가져오기
	public int getOrderCount(Map<String, String> map) throws Exception {
		return session.selectOne("adminOrderMapper.getOrderCount", map);
	}
	
	// 주문 목록 가져오기
	public List<Map<String, Object>> getOrderList(Map<String, Object> map) throws Exception {
		return session.selectList("adminOrderMapper.getOrderList", map);
	}
	
	// 상품 목록 가져오기
	public List<Map<String, Object>> getProductList(int order_no) throws Exception {
		return session.selectList("adminOrderMapper.getProductList", order_no);
	}
	
	// 주문 상태 확인
	public String checkOrder(String payment_no) throws Exception {
		return session.selectOne("adminOrderMapper.checkOrder", payment_no);
	}
	
	// 주문 상태 변경
	public int updateStatus(String order_no) throws Exception {
		return session.update("adminOrderMapper.updateStatus", order_no);
	}
	
	// 주문 상세 정보
	public Map<String, Object> getOrderDetail(String order_no) throws Exception {
		return session.selectOne("adminOrderMapper.getOrderDetail", order_no);
	}
	
	// 배송지 변경
	public int changeAddress(Map<String, String> map) throws Exception {
		return session.update("adminOrderMapper.changeAddress", map);
	}

}
