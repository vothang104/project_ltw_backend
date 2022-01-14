package ego.wear.DAO.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.IItemDAO;
import ego.wear.mapper.CategoryMapper;
import ego.wear.mapper.ItemMapper;
import ego.wear.model.ItemModel;
import ego.wear.model.ProductModel;
import ego.wear.service.impl.ProductService;

public class ItemDAO extends AbstractDAO<ItemModel> implements IItemDAO{
	public static ItemDAO itemDao = null;
	public static ItemDAO getInstance() {
		if(itemDao == null) {
			itemDao = new ItemDAO();
		}
		return itemDao;
	}
	@Override
	public List<ItemModel> findAll() {
		String sql = "SELECT * FROM item";
		return query(sql, new ItemMapper());
	}

	@Override
	public ItemModel findById(long id) {
		String sql = "SELECT * FROM item where id = ?";
		return query(sql, new ItemMapper(), id).get(0);
	}

	@Override
	public void update(ItemModel itemModel) {
		String sql = "UPDATE item SET name = ?,  price = ?, quantity = ?, product_id = ?, order_id = ?, modified_by = ?, modified_date = ? WHERE id = ?";
		update(sql, itemModel.getName(), itemModel.getPrice(), itemModel.getQuantity(), itemModel.getProductId(),
				itemModel.getOrderId(), itemModel.getModifiedBy(), itemModel.getModifiedDate(), itemModel.getId());
	}

	@Override
	public long insert(ItemModel itemModel) {
		String sql = "INSERT INTO item(name, price, quantity, product_id, order_id, created_by, created_date)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		long id = insert(sql, itemModel.getName(), itemModel.getPrice(), itemModel.getQuantity(), itemModel.getProductId(),
				itemModel.getOrderId(), itemModel.getCreatedBy(), itemModel.getCreatedDate());
		return id;
	}
	public static void main(String[] args) {
		ItemModel item = ItemDAO.getInstance().findById(1);
		item.setQuantity(4);
		item.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		
		ItemDAO.getInstance().update(item);
	}
}
