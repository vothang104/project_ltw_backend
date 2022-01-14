package ego.wear.service.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.impl.CategoryDAO;
import ego.wear.DAO.impl.ItemDAO;
import ego.wear.model.ItemModel;
import ego.wear.service.IItemService;

public class ItemService implements IItemService {
	public static ItemService itemService;
	public static ItemService getInstance() {
		if(itemService == null) {
			itemService = new ItemService();
		}
		return itemService;
	}

	@Override
	public List<ItemModel> findAll() {
		return ItemDAO.getInstance().findAll();
	}

	@Override
	public ItemModel findById(long id) {
		return ItemDAO.getInstance().findById(id);
	}

	@Override
	public ItemModel insert(ItemModel itemModel) {
		long id = ItemDAO.getInstance().insert(itemModel);
		return findById(id);
	}

	@Override
	public ItemModel update(ItemModel itemModel) {
		ItemDAO.getInstance().update(itemModel);
		return findById(itemModel.getId());
	}
	public static void main(String[] args) {
		ItemModel item = ItemService.getInstance().findById(1);
		item.setPrice(355000);
		item.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		
		item = ItemService.getInstance().update(item);
		System.out.println(item.getPrice());
	}
}
