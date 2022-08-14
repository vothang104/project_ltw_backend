package ego.wear.DAO;

import java.util.List;

import ego.wear.model.SubCategoryModel;
import ego.wear.pagination.IPageble;

public interface ISubCategoryDAO extends IGenericDAO<SubCategoryModel>{
	List<SubCategoryModel> findAll(IPageble pageble);
	SubCategoryModel findById(long id);
	int update(SubCategoryModel subCategoryModel);
	long insert(SubCategoryModel subCategoryModel);
	int delete(long id);
}
