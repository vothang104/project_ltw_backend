package ego.wear.DAO.impl;

import java.util.List;

import ego.wear.DAO.IProductDAO;
import ego.wear.condition.Condition;
import ego.wear.mapper.ProductMapper;
import ego.wear.model.ProductModel;
import ego.wear.pagination.IPageble;
import ego.wear.pagination.PageRequest;
import ego.wear.sort.Sorter;

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
				int length = pageble.getCondition().length;
				for(int i = 0; i < length; i++) {
					Condition con = pageble.getCondition()[i];
					if(i > 0) {
						sql.append(" AND " + con.getConditionName() + " " + con.getConditionType() + " " + con.getConditionValue());
					}else {
						sql.append(" WHERE " + con.getConditionName() + " " + con.getConditionType() + " " + con.getConditionValue());
					}
					
				}
//				sql.append(" WHERE " + pageble.getCondition().getConditionName() + " = " + pageble.getCondition().getConditionValue());
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
		String sql = "SELECT * FROM product where id = ? AND quantity > 0";
		List<ProductModel> list = query(sql, new ProductMapper(), id);
		if(!list.isEmpty()) {
			return list.get(0);
		}
		return null;
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
		Condition[] arrCondition = new Condition[1];
		arrCondition[0] = new Condition("quantity", 0, ">");
		List<ProductModel> list = ProductDAO.getInstance().findAll(new PageRequest(1, 12, new Sorter("desc", "id"), arrCondition));
		for(int i = 0; i < list.size(); i++) {
			System.out.println(i + 1 + " " + list.get(i).getName());
		}
	}
	
}
