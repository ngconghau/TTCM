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

import shopbag.entities.Catalog;
import shopbag.entities.Product;
import shopbag.entities.Review;
import shopbag.service.CategoryService;
import shopbag.service.ProductService;
import shopbag.service.ReviewService;
import shopbag.service.impl.CategoryServicesImpl;
import shopbag.service.impl.ProductServiceImpl;
import shopbag.service.impl.ReviewServicesImpl;

@WebServlet(urlPatterns = {"/view/client/product-detail"},name = "productDetail")
public class ProductDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductService productService = new ProductServiceImpl();
	ReviewService reviewService = new ReviewServicesImpl();
	DecimalFormat df = new DecimalFormat("#.00");
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//lấy id product trên url
		String id = req.getParameter("id");
		Product detail_product = productService.get(Integer.parseInt(id));// lấy dữ liệu product theo id
		req.setAttribute("detail_product", detail_product); // đẩy dữ liệu của detail_product lên chỗ detail_product của trang product-detail.jsp
		
		List<Catalog> name_cate_of_product = cateService.getCateByProduct(Integer.parseInt(id));// lấy id catagory theo product
		req.setAttribute("name_cate_of_product", name_cate_of_product);
		
		String idCate = detail_product.getCatalog_id();
		
		List<Product> productListCate = productService.getProductById(Integer.parseInt(idCate));// lấy product theo catagory id
		req.setAttribute("productById", productListCate);
		
		List<Review> reviewById = reviewService.getReviewById(Integer.parseInt(id));// lay tất cả review theo product id
		req.setAttribute("reviewbyid", reviewById);
		
		List<Product> productList = productService.getAll();// lấy tất cả sản phẩm từ bản product
		req.setAttribute("productlist", productList);	
		
		//Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productList)
		{
			Product product1 = productService.get(Integer.parseInt(product.getId()));// lấy product theo id
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}
		req.setAttribute("productlist1", productsList1);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product-detail.jsp");
		dispatcher.forward(req, resp);
	}

}
