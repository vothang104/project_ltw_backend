package ego.wear.service;

import java.util.List;

import ego.wear.model.ItemModel;

public interface IItemService {
	List<ItemModel> findAll();
	ItemModel findById(long id);
	ItemModel insert(ItemModel itemModel);
	ItemModel update(ItemModel itemModel);
}
