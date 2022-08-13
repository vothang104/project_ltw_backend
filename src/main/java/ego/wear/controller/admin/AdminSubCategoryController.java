package ego.wear.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ego.wear.model.SubCategoryModel;
import ego.wear.pagination.NumberPage;
import ego.wear.pagination.PageRequest;
import ego.wear.service.impl.SubCategoryService;

/**
 * Servlet implementation class AdminSubCategoryController
 */
@WebServlet("/admin-subcategory")
public class AdminSubCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSubCategoryController() {
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
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int itemPerPage = 4;
		int totalItem = SubCategoryService.getInstance().findAll(null).size();
		int numberPage = new NumberPage(itemPerPage, totalItem).getNumberPage();
		List<SubCategoryModel> listSubCategoryModel = SubCategoryService.getInstance().findAll(new PageRequest(page, itemPerPage, null, null));
		request.setAttribute("SubCategories", listSubCategoryModel);
		request.setAttribute("numberPage", 100);
		request.setAttribute("currentPage", page);
		request.getRequestDispatcher("views/admin/subcategory.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
