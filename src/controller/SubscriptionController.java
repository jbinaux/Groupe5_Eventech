package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.PreparedStatement;

import model.Subscription;
import password.Password;

public class SubscriptionController {

	Subscription model = new Subscription();
	
	public boolean exist(int userId, int eventId)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		Statement st = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			st = cn.createStatement();
			String sql = "SELECT * FROM eventech_db.subscriptions WHERE id_user = " + userId + " AND id_event = " + eventId;
			ResultSet result = st.executeQuery(sql);

			if (result.next()) 
			{
				return true;
			}
			else
			{
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
	public void delete(int id)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		PreparedStatement ps = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("DELETE FROM subscriptions WHERE id_subscription = " + id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void create(int userId, int eventId)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		PreparedStatement ps = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("INSERT INTO subscriptions (`id_user`,`id_event`) VALUES(?,?)");
			ps.setInt(1, userId);
			ps.setInt(2, eventId);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void retrieveSub(int userId, int eventId)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		PreparedStatement ps = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("SELECT * FROM eventech_db.subscriptions WHERE id_user = " + userId + " AND id_event = " + eventId);
			ResultSet result = ps.executeQuery();
			if(result.next())
			{
				model.setIdSub(result.getInt("id_subscription"));
				model.setIdUser(result.getInt("id_user"));
				model.setIdEvent(result.getInt("id_event"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int numberOfSubs(int eventId)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		PreparedStatement ps = null;
		int count = 0;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("SELECT * FROM eventech_db.subscriptions WHERE id_event = " + eventId);
			ResultSet result = ps.executeQuery();
			while(result.next())
			{
				count++;
			}
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	public int getIdSub() {
		return model.getIdSub();
	}
	public void setIdSub(int idSub) {
		model.setIdSub(idSub);;
	}
	public int getIdUser() {
		return model.getIdUser();
	}
	public void setIdUser(int idUser) {
		model.setIdUser(idUser);;
	}
	public int getIdEvent() {
		return model.getIdEvent();
	}
	public void setIdEvent(int idEvent) {
		model.setIdEvent(idEvent);;
	}
}
