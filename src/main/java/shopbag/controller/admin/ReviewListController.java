package shopbag.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopbag.model.Review;
import shopbag.service.ReviewService;
import shopbag.service.impl.ReviewServicesImpl;

@WebServlet(urlPatterns = {"/admin/review/list"},name = "listReview")
public class ReviewListController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ReviewService reviewService = new ReviewServicesImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Review> reviewList = reviewService.getAll();
		req.setAttribute("reviewlist", reviewList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/show-review.jsp");
		dispatcher.forward(req, resp);
	}
}
