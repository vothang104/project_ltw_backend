package ego.wear.service;

import java.util.List;

import ego.wear.model.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> findAll();
	CategoryModel findById(long id);
	CategoryModel insert(CategoryModel categoryModel);
	CategoryModel update(CategoryModel categoryModel);
}
