package ego.wear.service.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.impl.OrderDAO;
import ego.wear.model.OrderModel;
import ego.wear.service.IOrderService;

public class OrderService implements IOrderService {
	public static OrderService orderService;
	public static OrderService getInstance() {
		if(orderService == null) {
			orderService = new OrderService();
		}
		return orderService;
	}
	@Override
	public List<OrderModel> findAll() {
		return OrderDAO.getInstance().findAll();
	}
	@Override
	public List<OrderModel> findByIdUser(long idUser) {
		return OrderDAO.getInstance().findByIdUser(idUser);
	}
	@Override
	public OrderModel findById(long id) {
		return OrderDAO.getInstance().findById(id);
	}

	@Override
	public OrderModel insert(OrderModel orderModel) {
		long id = OrderDAO.getInstance().insert(orderModel);
		return findById(id);
	}

	@Override
	public OrderModel update(OrderModel orderModel) {
		OrderDAO.getInstance().update(orderModel);
		return findById(orderModel.getId());
	}
	public static void main(String[] args) {
		OrderModel order = OrderService.getInstance().findById(2);
		order.setTotalPrice(1800000);
		order.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		
		order = OrderService.getInstance().update(order);
		System.out.println(order.getTotalPrice());
	}
}
