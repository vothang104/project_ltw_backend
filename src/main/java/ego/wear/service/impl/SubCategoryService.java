package ego.wear.service.impl;

import java.sql.Timestamp;
import java.util.List;

import ego.wear.DAO.impl.CategoryDAO;
import ego.wear.DAO.impl.SubCategoryDAO;
import ego.wear.model.CategoryModel;
import ego.wear.model.SubCategoryModel;
import ego.wear.pagination.IPageble;
import ego.wear.pagination.PageRequest;
import ego.wear.service.ISubCategoryService;
import ego.wear.util.GenerateCode;

public class SubCategoryService implements ISubCategoryService {
	public static SubCategoryService subCategoryService;
	public static SubCategoryService getInstance() {
		if(subCategoryService == null) {
			subCategoryService = new SubCategoryService();
		}
		return subCategoryService;
	}
	@Override
	public List<SubCategoryModel> findAll(IPageble pageble) {
		return SubCategoryDAO.getInstance().findAll(pageble);
	}

	@Override
	public SubCategoryModel findById(long id) {
		return SubCategoryDAO.getInstance().findById(id);
	}

	@Override
	public SubCategoryModel insert(SubCategoryModel subCategoryModel) {
		long id = SubCategoryDAO.getInstance().insert(subCategoryModel);
		SubCategoryModel subCate = findById(id);
		return subCate;
	}

	@Override
	public SubCategoryModel update(SubCategoryModel subCategoryModel) {
		SubCategoryDAO.getInstance().update(subCategoryModel);
		return findById(subCategoryModel.getId());
	}
	@Override
	public int delete(long id) {
		return SubCategoryDAO.getInstance().delete(id);
	}
	public static void main(String[] args) {
//		SubCategoryModel oldCate = SubCategoryService.getInstance().findById(1);
//		if(oldCate != null) {
//			oldCate.setName("Sơ mi nam");
//			oldCate.setModifiedDate(new Timestamp(System.currentTimeMillis()));
//			oldCate.setCode(GenerateCode.generateCode(oldCate.getName()));
//			
//			SubCategoryModel newSub = SubCategoryService.getInstance().update(oldCate);
//			System.out.println(newSub.getName());
//		}else {
//			System.out.println("subcate null");
//		}
		
		List<SubCategoryModel> list = SubCategoryService.getInstance().findAll(new PageRequest(2, 2, null, null));
		for (SubCategoryModel subItem: list) {
			System.out.println(subItem.getName());
		}
	}
}
