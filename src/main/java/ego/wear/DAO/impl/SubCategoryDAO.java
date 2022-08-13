package ego.wear.DAO.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.ISubCategoryDAO;
import ego.wear.condition.Condition;
import ego.wear.mapper.ProductMapper;
import ego.wear.mapper.SubCategoryMapper;
import ego.wear.model.SubCategoryModel;
import ego.wear.pagination.IPageble;
import ego.wear.util.GenerateCode;

public class SubCategoryDAO extends AbstractDAO<SubCategoryModel> implements ISubCategoryDAO {
	public static SubCategoryDAO subCategoryDao = null;
	public static SubCategoryDAO getInstance() {
		if(subCategoryDao == null) {
			subCategoryDao = new SubCategoryDAO();
		}
		return subCategoryDao;
	}
	@Override
	public List<SubCategoryModel> findAll(IPageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM sub_category");
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
		return query(sql.toString(), new SubCategoryMapper());
	}
	@Override
	public SubCategoryModel findById(long id) {
		String sql = "SELECT * FROM sub_category where id = ?";
		return query(sql, new SubCategoryMapper(), id).get(0);
	}
	@Override
	public long insert(SubCategoryModel subCategoryModel) {
		String sql = "INSERT INTO sub_category(name, code, category_id, created_by, created_date)"
				+ "VALUES(?, ?, ?, ?, ?)";
		long id = insert(sql, subCategoryModel.getName(), subCategoryModel.getCode(), subCategoryModel.getCategoryId(), subCategoryModel.getCreatedBy(), subCategoryModel.getCreatedDate());
		return id;
	}
	
	@Override
	public void update(SubCategoryModel subCategoryModel) {
		String sql = "UPDATE sub_category SET name = ?,  code = ?, category_id = ?, modified_by = ?, modified_date = ? WHERE id = ?";
		update(sql, subCategoryModel.getName(), subCategoryModel.getCode(), subCategoryModel.getCategoryId(), subCategoryModel.getModifiedBy(), subCategoryModel.getModifiedDate(), subCategoryModel.getId());
	}
	public static void main(String[] args) {
		
	}

}
