package kr.co.farmstory2.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmstory2.dto.OrderDTO;

public class OrderService {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	public void insertOrder(OrderDTO dto) {}
	public OrderDTO selectOrder(int orderNo) {
		return null;
	}
	public List<OrderDTO> selectOrders() {
		return null;
	}
	public void updateOrder(OrderDTO dto) {}
	public void deleteOrder(int orderNo) {}
	
}
