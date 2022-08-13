package ego.wear.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ego.wear.model.CategoryModel;
import ego.wear.service.impl.CategoryService;

/**
 * Servlet implementation class AdminInsertCategoryController
 */
@WebServlet(urlPatterns = {"/admin-editcategory", "/admin-insertcategory"})
public class AdminInsertCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		long id = 0;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
			CategoryModel categoryModel = CategoryService.getInstance().findById(id);
			
			request.setAttribute("categoryModel", categoryModel);
			request.getRequestDispatcher("views/admin/insertcategory.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("views/admin/insertcategory.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		long id = Long.parseLong(request.getParameter("id"));
		
		CategoryModel categoryModel = CategoryService.getInstance().findById(id);
		categoryModel.setName(name);
		
		
	}

}
