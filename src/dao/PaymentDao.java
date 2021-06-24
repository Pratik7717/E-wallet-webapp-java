package dao;

import java.sql.*;
import java.util.Date;

import model.Payment;

public class PaymentDao {
	private int i=0;
	public int create(Payment payment) {
		Connection con=MyConnection.getConnection();
//		Date date=new Date();
//		payment.setDescription(payment.getDescription()+date);
//		System.out.println("date is:" + date);
		try {
			PreparedStatement ps=con.prepareStatement("insert into payments values(?,?,?,?)");
			ps.setString(1, payment.getPaymentid());
			ps.setString(2, payment.getDescription());
			ps.setDouble(3, payment.getAmount());
			ps.setInt(4, payment.getUserid());
			i=ps.executeUpdate();
			ps=con.prepareStatement("update user set balance=? where id=?");
			ps.setDouble(1, payment.getAmount());
			ps.setInt(2, payment.getUserid());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("exception in Paymentdao create()" + e);
			e.printStackTrace();
		}
		
		
		return i;
	}
}
