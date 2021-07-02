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

import shopbag.entities.Product;
import shopbag.service.ProductService;
import shopbag.service.impl.ProductServiceImpl;

import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {""}, name = "homePage")
public class HomeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	DecimalFormat df = new DecimalFormat("#.00");
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Product Balo mikkor
		List<Product> product_balo_mikkor= productService.getProductById(1);
		req.setAttribute("product_balo_mikkor", product_balo_mikkor);	
		
		// Product Balo_reeyee
		List<Product> product_balo_reeyee= productService.getProductById(2);
		req.setAttribute("product_balo_reeyee", product_balo_reeyee);	
		
		// Product balo targus
		List<Product> product_balo_targus= productService.getProductById(3);
		req.setAttribute("product_balo_targus", product_balo_targus);	
		
		// Product balo Tomtoc
		List<Product> product_balo_tomtoc= productService.getProductById(4);
		req.setAttribute("product_balo_tomtoc", product_balo_tomtoc);	
		
		// Product mới
		List<Product> product_new= productService.getProductById(5);
		req.setAttribute("product_new", product_new);	
				
		// Product bán chạy
		List<Product> product_banchay= productService.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);	
		//Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productList)
		{
			Product product1 = productService.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}

		req.setAttribute("productlist1", productsList1);
		
		// Product giảm giá
		List<Product> product_sale= productService.getProductById(7);
		req.setAttribute("product_sale", product_sale);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}
}
