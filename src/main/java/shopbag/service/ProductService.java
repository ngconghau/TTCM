package shopbag.service;

import java.util.List;

import shopbag.model.Product;
public interface ProductService {
	void insert(Product product); // thêm product

	void edit(Product product);// sửa product

	void delete(String id);// xóa product

	Product get(int id);// lấy product theo id product
	
	Product get(String name);// lấy product theo tên product

	List<Product> getAll();// lấy tất cả product
	
	List<Product> getProductById(int id);// lấy product theo catalog_id

	List<Product> searchByName(String productName); // tìm kiếm product 

	List<Product> getProductByIdCate(int idCate);// lấy product theo catagory id

}

