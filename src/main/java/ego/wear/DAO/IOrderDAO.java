package ego.wear.DAO;

import java.util.List;

import ego.wear.model.OrderModel;

public interface IOrderDAO {
	List<OrderModel> findAll();
	OrderModel findById(long id);
	void update(OrderModel orderModel);
	long insert(OrderModel orderModel);
}
