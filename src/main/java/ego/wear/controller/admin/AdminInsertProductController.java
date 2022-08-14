package ego.wear.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ego.wear.model.ImageModel;
import ego.wear.model.ProductModel;
import ego.wear.model.SubCategoryModel;
import ego.wear.service.impl.ImageService;
import ego.wear.service.impl.ProductService;
import ego.wear.service.impl.SubCategoryService;

/**
 * Servlet implementation class AdminInsertProductController
 */
@WebServlet(urlPatterns = { "/admin-insertproduct", "/admin-updateproduct" })
@MultipartConfig(fileSizeThreshold = 0, // 0 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class AdminInsertProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminInsertProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		List<SubCategoryModel> listSubCategory = SubCategoryService.getInstance().findAll();

		request.setAttribute("listSub", listSubCategory);
		if (request.getParameter("type") != null && request.getParameter("type").equals("update")) {
			long id = Long.parseLong(request.getParameter("id"));
			ProductModel productModel = ProductService.getInstance().findById(id);
			List<ImageModel> listImage = ImageService.getInstance().findByProductId(id);
			
			request.setAttribute("listImage", listImage);
			request.setAttribute("product", productModel);
			request.getRequestDispatcher("views/admin/insert.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("views/admin/insert.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String type = request.getParameter("type");
		// get parameters
		String name = request.getParameter("name");
		String brand = request.getParameter("brand");
		String material = request.getParameter("material");
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int salePercent = Integer.parseInt(request.getParameter("salepercent"));
		long subCategoryId = Long.parseLong(request.getParameter("subcategoryid"));
		ProductModel productModel = null;
		ProductModel productInserted = null;
		if(type != null && type.equals("update")) {
			long id = Long.parseLong(request.getParameter("id"));
			productModel = ProductService.getInstance().findById(id);
			productModel.setName(name);
			productModel.setBranch(brand);
			productModel.setMaterial(material);
			productModel.setPrice(price);
			productModel.setQuantity(quantity);
			productModel.setSalePercent(salePercent);
			productModel.setSubCategoryId(subCategoryId);
			productInserted = ProductService.getInstance().update(productModel);
		}else {
			productModel = new ProductModel(0, "", null, "", null, name, price, brand, material, salePercent,
					quantity, subCategoryId);
			productInserted = ProductService.getInstance().insert(productModel);
			// get image 1
			Part part = request.getPart("image1");
			String realPath = request.getServletContext().getRealPath("/upload");
			String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
			if (!Files.exists(Paths.get(realPath))) {
				Files.createDirectory(Paths.get(realPath));
			}
			ImageModel img1 = new ImageModel(0, "", null, "", null, fileName, productInserted.getId());
			img1 = ImageService.getInstance().insert(img1);
			part.write(realPath + "/" + fileName);
			// get image 2
			Part part2 = request.getPart("image2");
			String fileName2 = Paths.get(part2.getSubmittedFileName()).getFileName().toString();
			if (!Files.exists(Paths.get(realPath))) {
				Files.createDirectory(Paths.get(realPath));
			}
			ImageModel img2 = new ImageModel(0, "", null, "", null, fileName2, productInserted.getId());
			img2 = ImageService.getInstance().insert(img2);
			part2.write(realPath + "/" + fileName2);
		}

		response.sendRedirect(request.getServletContext().getContextPath() + "/admin-allproduct");
	}

}
