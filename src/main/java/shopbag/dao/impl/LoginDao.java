package shopbag.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;

import shopbag.entities.User;
import shopbag.jdbc.connectDB;

public class LoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public User checkLogin(String username, String password) {
		try {
			String query = "select name, email, phone from users where username = ? AND password = ?";
			new connectDB();
			conn = connectDB.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while(rs.next()) {
				User u = new User(rs.getString(1), rs.getString(2), rs.getString(3));
				return u;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}	
}
