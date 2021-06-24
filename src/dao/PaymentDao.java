package dao;

import java.sql.*;
//import java.util.Date;
import java.util.LinkedList;
import java.util.List;

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
	
	
	public List<Payment> getAllPayments(int id) {
		List<Payment> list=null;
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from payments where userid=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				if(list==null) {
					list=new LinkedList<Payment>();
				}
				list.add(new Payment(rs.getString(1),rs.getString(2),rs.getDouble(3),rs.getInt(4)));
			}
		} catch (SQLException e) {
			System.out.println("exception in getallpayments() in paymentdao " + e );
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	
}
