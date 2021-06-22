package dao;

import java.sql.*;

import model.Register;

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
	
}
