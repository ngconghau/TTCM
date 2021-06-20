package shopbag.controller.client;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopbag.model.Catalog;
import shopbag.model.Product;
import shopbag.service.CategoryService;
import shopbag.service.ProductService;
import shopbag.service.impl.CategoryServicesImpl;
import shopbag.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = "/view/client/product-id", name = "ProductListOfCategoryClient")
public class ProductListOfCategoryClientController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductService productService = new ProductServiceImpl();
	DecimalFormat df = new DecimalFormat("#.00");

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Catalog> cateList = cateService.getAll();// lấy tất cả các catagory
		req.setAttribute("catelist", cateList);// đẩy cateList lên chỗ catalist của trang product
		String id = req.getParameter("id");// lấy id catagory trên url
		List<Product> productList = productService.getProductById(Integer.parseInt(id));// lấy tất cả product theo id catagory
		req.setAttribute("productlist", productList);	//đổ dữ liệu vào trong productlist
		
		//Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productList)
		{
			Product product1 = productService.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}

		req.setAttribute("productlist1", productsList1);
		
		// Product bán chạy
		List<Product> product_banchay= productService.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product.jsp");
		dispatcher.forward(req, resp);
	}

}
