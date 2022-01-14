package ego.wear.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ego.wear.condition.Condition;
import ego.wear.model.ImageModel;
import ego.wear.model.ProductModel;
import ego.wear.pagination.NumberPage;
import ego.wear.pagination.PageRequest;
import ego.wear.service.impl.ImageService;
import ego.wear.service.impl.ProductService;
import ego.wear.sort.Sorter;
import ego.wear.util.RequestSetAttributeUtil;

/**
 * Servlet implementation class AllProductController
 */
@WebServlet(urlPatterns = {"/allproduct"})
public class AllProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String type = request.getParameter("type");
		long categoryId = 0;
		if(request.getParameter("id") != null) {
			categoryId = Long.parseLong(request.getParameter("id"));
		}	
		int itemPerPage = 12;
		int currentPage = 1;
		int numberPage = 0;
		List<ProductModel> listProduct;
		RequestSetAttributeUtil.setCategory(request);
		List<ImageModel> listImage = ImageService.getInstance().findAllOneProduct();
		
		switch (type) {
		case "new":
			listProduct = ProductService.getInstance().findAll(new PageRequest(currentPage, itemPerPage, new Sorter("desc", "id"), null));
			numberPage = new NumberPage(itemPerPage, ProductService.getInstance().findAll(null).size()).getNumberPage();
			request.setAttribute("listImage", listImage);
			request.setAttribute("numberPage", numberPage);
			request.setAttribute("listProduct", listProduct);
			request.getRequestDispatcher("views/web/newproduct.jsp").forward(request, response);
			break;
		case "category":
			listProduct = ProductService.getInstance().findAll(new PageRequest(currentPage, itemPerPage,
					new Sorter("desc", "id"), new Condition("sub_category_id", categoryId)));
			numberPage = new NumberPage(itemPerPage, ProductService.getInstance().findAll(new PageRequest(null, null, new Sorter("desc", "id"), new Condition("sub_category_id", categoryId))).size()).getNumberPage();
			request.setAttribute("categoryId", categoryId);
			request.setAttribute("listImage", listImage);
			request.setAttribute("numberPage", numberPage);
			request.setAttribute("listProduct", listProduct);
			request.getRequestDispatcher("views/web/allproduct.jsp").forward(request, response);
			break;
		default:
			break;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
