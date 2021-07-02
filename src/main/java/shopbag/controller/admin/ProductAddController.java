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

@MultipartConfig
@WebServlet(urlPatterns = {"/admin/product/add"},name = "addProduct")
public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryService cateService = new CategoryServicesImpl();
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/addproduct.jsp");
		dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=UTF-8");
			String product_cate = req.getParameter("product-cate");
			String product_name = req.getParameter("product-name");
			String product_price = req.getParameter("product-price");
			String product_status = req.getParameter("product-status");
			String product_desc = req.getParameter("product-desc");
			String product_content = req.getParameter("product-content");
			String product_discount = req.getParameter("product-discount");
//			String product_image = req.getParameter("product-image");
			Part part= req.getPart("product-image");
			String product_image= part.getSubmittedFileName();
			String partString = "D:/Document/Java/Learn/DTCM/src/main/webapp/view/client/assets/images/products/img-test/"+product_image;
			try {
				FileOutputStream fopStream= new FileOutputStream(partString);
				InputStream iStream= part.getInputStream();
				byte[] byt = new byte[iStream.available()];
				iStream.read(byt);
				fopStream.write(byt);
				fopStream.flush();
				fopStream.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			String product_day = req.getParameter("product-day");
			
			
			Product product = new Product();
			product.setCatalog_id(product_cate);
			product.setName(product_name);
			product.setPrice(product_price);
			product.setStatus(product_status);
			product.setDescription(product_desc);
			product.setContent(product_content);
			product.setDiscount(product_discount);
			product.setImage_link(product_image);
			product.setCreated(product_day);
			productService.insert(product);
			resp.sendRedirect(req.getContextPath() + "/admin/product/list");
	}
	
}
