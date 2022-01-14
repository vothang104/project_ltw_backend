package ego.wear.DAO;

import java.util.List;

import ego.wear.model.CategoryModel;

public interface ICategoryDAO extends IGenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
	CategoryModel findById(long id);
	void update(CategoryModel categoryModel);
	long insert(CategoryModel categoryModel);
}
