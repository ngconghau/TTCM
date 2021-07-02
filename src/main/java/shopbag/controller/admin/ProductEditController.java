package shopbag.controller.admin;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import shopbag.entities.Catalog;
import shopbag.entities.Product;
import shopbag.service.CategoryService;
import shopbag.service.ProductService;
import shopbag.service.impl.CategoryServicesImpl;
import shopbag.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class ProductEditController
 */

//@MultipartConfig
@WebServlet(urlPatterns = {"/admin/product/edit"},name = "editProduct")
public class ProductEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryService cateService = new CategoryServicesImpl();
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		req.setAttribute("product", product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editproduct.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		
//		Part part= req.getPart("product-image");
//		String product_image= part.getSubmittedFileName();
//		String partString = "D:/Document/Java/Learn/TTCM/WebContent/view/client/assets/images/banner/"+product_image;
//		try {
//			FileOutputStream fopStream= new FileOutputStream(partString);
//			InputStream iStream= part.getInputStream();
//			byte[] byt = new byte[iStream.available()];
//			iStream.read(byt);
//			fopStream.write(byt);
//			fopStream.flush();
//			fopStream.close();
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		Product product = new Product();
		product.setId(req.getParameter("product-sku"));
		product.setCatalog_id(req.getParameter("product-cate"));
		product.setName(req.getParameter("product-name"));
		product.setPrice(req.getParameter("product-price"));
		product.setStatus(req.getParameter("product-status"));
		product.setDescription(req.getParameter("product-desc"));
		product.setContent(req.getParameter("product-content"));
		product.setDiscount(req.getParameter("product-discount"));
		product.setImage_link(req.getParameter("product-image"));
		product.setCreated(req.getParameter("product-day"));
		productService.edit(product);
		
		resp.sendRedirect(req.getContextPath()+"/admin/product/list");

	}
}