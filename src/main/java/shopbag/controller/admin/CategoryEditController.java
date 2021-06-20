package shopbag.controller.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopbag.model.Catalog;
import shopbag.service.CategoryService;
import shopbag.service.impl.CategoryServicesImpl;

/**
 * Servlet implementation class CatagoryEditController
 */
@WebServlet(urlPatterns = {"/admin/cate/edit"},name = "editCategory")
public class CategoryEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Catalog catelist = cateService.get(Integer.parseInt(id));
		req.setAttribute("catelist", catelist);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editcate.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		Catalog category = new Catalog();
		category.setName(req.getParameter("name"));
		category.setParent_id(req.getParameter("parent-id"));
		category.setId(req.getParameter("id"));
		cateService.edit(category);
		
		resp.sendRedirect(req.getContextPath()+"/admin/cate/list");

	}
}