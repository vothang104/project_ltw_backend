package ego.wear.DAO.impl;

import java.util.List;

import ego.wear.DAO.IProductDAO;
import ego.wear.mapper.ProductMapper;
import ego.wear.model.ProductModel;
import ego.wear.pagination.IPageble;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO{
	public static ProductDAO productDao = null;
	public static ProductDAO getInstance() {
		if(productDao == null) {
			productDao = new ProductDAO();
		}
		return productDao;
	}
	@Override
	public List<ProductModel> findAll(IPageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM product");
		if(pageble != null) {
			if(pageble.getCondition() != null) {
				sql.append(" WHERE " + pageble.getCondition().getConditionName() + " = " + pageble.getCondition().getConditionValue());
			}
			if(pageble.getSorter() != null) {
				sql.append(" ORDER BY " + pageble.getSorter().getSortBy() + " " + pageble.getSorter().getSortName());
			}
			if(pageble.getOffset() != null && pageble.getLitmit() != null) {
				sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLitmit());
			}
		}		
		return query(sql.toString(), new ProductMapper());
	}
	@Override
	public ProductModel findById(long id) {
		String sql = "SELECT * FROM product where id = ?";
		return query(sql, new ProductMapper(), id).get(0);
	}

	@Override
	public void update(ProductModel productModel) {
		String sql = "UPDATE product set name = ?, price = ?, branch = ?, material = ?,"
				+ "sale_percent = ?, quantity = ?, sub_category_id = ?, modified_by = ?, modified_date = ? WHERE id = ?";
		update(sql, productModel.getName(), productModel.getPrice(), productModel.getBranch(), productModel.getMaterial(),
				productModel.getSalePercent(), productModel.getQuantity(), productModel.getSubCategoryId(),
				productModel.getModifiedBy(), productModel.getModifiedDate(), productModel.getId());
	}

	@Override
	public long insert(ProductModel productModel) {
		String sql = "INSERT INTO product(name, price, branch, material, sale_percent, quantity, sub_category_id, created_by, created_date)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		long id = insert(sql, productModel.getName(), productModel.getPrice(), productModel.getBranch(), productModel.getMaterial(),
				productModel.getSalePercent(), productModel.getQuantity(), productModel.getSubCategoryId(), productModel.getCreatedBy(), productModel.getCreatedDate());
		return id;
	}
	
	public static void main(String[] args) {
		
	}
	
}
