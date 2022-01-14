package ego.wear.DAO.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.IOrderDAO;
import ego.wear.mapper.OrderMapper;
import ego.wear.mapper.SubCategoryMapper;
import ego.wear.model.OrderModel;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO{
	public static OrderDAO orderDao = null;
	public static OrderDAO getInstance() {
		if(orderDao == null) {
			orderDao = new OrderDAO();
		}
		return orderDao;
	}
	@Override
	public List<OrderModel> findAll() {
		String sql = "SELECT * FROM orders";
		return query(sql, new OrderMapper());
	}

	@Override
	public OrderModel findById(long id) {
		String sql = "SELECT * FROM orders where id = ?";
		return query(sql, new OrderMapper(), id).get(0);
	}

	@Override
	public void update(OrderModel orderModel) {
		String sql = "UPDATE orders SET total_price = ?,  status = ?, ship_date = ?, user_id = ?, modified_by = ?, modified_date = ? WHERE id = ?";
		update(sql, orderModel.getTotalPrice(), orderModel.getStatus(), orderModel.getShipDate(),
				orderModel.getUserId(), orderModel.getModifiedBy(), orderModel.getModifiedDate(), orderModel.getId());
	}

	@Override
	public long insert(OrderModel orderModel) {
		String sql = "INSERT INTO orders(total_price, status, ship_date, user_id, created_by, created_date)"
				+ "VALUES(?, ?, ?, ?, ?, ?)";
		long id = insert(sql, orderModel.getTotalPrice(), orderModel.getStatus(), orderModel.getShipDate(),
				orderModel.getUserId(), orderModel.getCreatedBy(), orderModel.getCreatedDate());
		return id;
	}
	public static void main(String[] args) {
		OrderModel oldOrder = OrderDAO.getInstance().findById(1);
		oldOrder.setTotalPrice(2000000);
		oldOrder.setModifiedBy("admin2");
		oldOrder.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		
		OrderDAO.getInstance().update(oldOrder);
	}
}
