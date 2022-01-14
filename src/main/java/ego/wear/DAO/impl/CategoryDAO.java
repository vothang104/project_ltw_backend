package ego.wear.DAO.impl;

import java.util.List;

import ego.wear.DAO.ICategoryDAO;
import ego.wear.mapper.CategoryMapper;
import ego.wear.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO{
	public static CategoryDAO categoryDao = null;
	public static CategoryDAO getInstance() {
		if(categoryDao == null) {
			categoryDao = new CategoryDAO();
		}
		return categoryDao;
	}
	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM category";
		return query(sql, new CategoryMapper());
	}
	@Override
	public CategoryModel findById(long id) {
		String sql = "SELECT * FROM category where id = ?";
		return query(sql, new CategoryMapper(), id).get(0);
	}
	
	@Override
	public void update(CategoryModel categoryModel) {
		String sql = "UPDATE category SET name = ?,  code = ?, modified_by = ?, modified_date = ? WHERE id = ?";
		update(sql, categoryModel.getName(), categoryModel.getCode(), categoryModel.getModifiedBy(), categoryModel.getModifiedDate(), categoryModel.getId());
	}

	@Override
	public long insert(CategoryModel categoryModel) {
		String sql = "INSERT INTO category(name, code, created_by, created_date)"
				+ "VALUES(?, ?, ?, ?)";
		long id = insert(sql, categoryModel.getName(), categoryModel.getCode(), categoryModel.getCreatedBy(), categoryModel.getCreatedDate());
		return id;
	}
	
}
