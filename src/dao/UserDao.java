package dao;

import java.sql.*;

import model.Register;
import model.User;

public class UserDao {
	private int i=0;
	public int create(Register rg) {
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into user(fname,lname,mobile,email,password,balance) values(?,?,?,?,?,?)");
			ps.setString(1, rg.getFname());
			ps.setString(2, rg.getLname());
			ps.setString(3, rg.getMobile());
			ps.setString(4, rg.getEmail());
			ps.setString(5, rg.getPassword());
			ps.setDouble(6, 0);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Exception in create() user");
			e.printStackTrace();
		}
		
		return i;
	}
	
	public User validateUser(String email, String password) {
		User user=null;
		try {
			Connection con=MyConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user where email=? AND password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				user= new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5), rs.getString(6), rs.getDouble(7));
			}
		} catch (SQLException e) {
			System.out.println("Exception in ValidateUser() dao");
			e.printStackTrace();
		}
		
		
		return user;
	}
	
}
