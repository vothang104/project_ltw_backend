package ego.wear.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ego.wear.model.ProductModel;
import ego.wear.pagination.NumberPage;
import ego.wear.pagination.PageRequest;
import ego.wear.service.impl.ProductService;
import ego.wear.sort.Sorter;

/**
 * Servlet implementation class AdminAllProductController
 */
@WebServlet(urlPatterns = {"/admin-allproduct"})
public class AdminAllProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAllProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int itemPerPage = 10;
		
		List<ProductModel> listProduct = ProductService.getInstance().findAll(new PageRequest(page, itemPerPage,
				new Sorter("desc", "id"), null));
		int numberPage = new NumberPage(itemPerPage, ProductService.getInstance().findAll(null).size()).getNumberPage();
		
		request.setAttribute("currentPage", page);
		request.setAttribute("numberPage", numberPage);
		request.setAttribute("listProduct", listProduct);
		request.getRequestDispatcher("views/admin/products.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
