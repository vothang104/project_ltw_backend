package ego.wear.service;

import java.util.List;

import ego.wear.model.SubCategoryModel;
import ego.wear.pagination.IPageble;

public interface ISubCategoryService {
	List<SubCategoryModel> findAll(IPageble pageble);
	SubCategoryModel findById(long id);
	SubCategoryModel insert(SubCategoryModel subCategoryModel);
	SubCategoryModel update(SubCategoryModel subCategoryModel);
	int delete(long id);
}
