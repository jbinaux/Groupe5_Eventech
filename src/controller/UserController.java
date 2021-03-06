package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.User;
import password.Password;

public class UserController {

	User model = new User();
	
	/**
	 * this method do a insert on the table "users" using the model's values.
	 * 
	 * @return the number of rows affected by the query, or 0 if something went wrong
	 */
	public int insertUser()
	{
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Password password = new Password();
			String url = "jdbc:mysql://localhost:3306/eventech_db"
					+ "?verifyServerCertificate=false&useSSL=true";
			String user = "root";
			String pwd = password.getPassword();

			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("insert into users(`nom`,`prenom`,`mail`,`mot_de_passe`"
					+ ",`is_admin`,`domaine_activite`) values(?,?,?,?,?,?)");
			ps.setString(1, model.getNom());
			ps.setString(2, model.getPrenom());
			ps.setString(3, model.getMail());
			ps.setString(4, model.getMotDePasse());
			ps.setBoolean(5, model.isAdmin());
			ps.setString(6, model.getDomaineActivite());

			int s = ps.executeUpdate();
			return s;
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
		return 0;
	}
	
	/**
	 * this method does a select on the "users" table with the email, and store its data in the model
	 * 
	 * @param email of the desired user
	 * @return 1 if the operation was successful, or 0 if it wasn't
	 */
	public int retrieveUser(String email)
	{
		Password password = new Password();
		String url = "jdbc:mysql://localhost/eventech_db"
				+ "?verifyServerCertificate=false&useSSL=true";
		String user = "root";
		String pwd = password.getPassword();

		Connection cn = null;
		Statement st = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			cn = DriverManager.getConnection(url, user, pwd);
			st = cn.createStatement();
			String sql = "SELECT * FROM eventech_db.users WHERE mail = '" + email + "'";
			ResultSet result = st.executeQuery(sql);

			if (result.next()) 
			{
				model.setAdmin(result.getBoolean("is_admin"));
				model.setDomaineActivite(result.getString("domaine_activite"));
				model.setIdUser(result.getInt("id_user"));
				model.setMail(result.getString("mail"));
				model.setMotDePasse(result.getString("mot_de_passe"));
				model.setNom(result.getString("nom"));
				model.setPrenom(result.getString("prenom"));
				model.setNumEmploye(result.getInt("num_employe"));
				return 1;
			}
			else
			{
				model = null;
				return 0;
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
		
		return 0;
	}
	
	/**
	 * this method compare the password of the model to the password submitted
	 * 
	 * @param password to verify
	 * @return true if the password match, false if it doesn't
	 */
	public boolean validatePassword(String password)
	{
		if(model.getMotDePasse().equals(password))
		{
			return true;
		}
		return false;
	}
	
	/**
	 * this method check if a user already exist at the specified email
	 * 
	 * @param email to verify
	 * @return true if the email is linked to an account, false if it doesn't
	 */
	public boolean userExist(String email)
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
			String sql = "SELECT * FROM eventech_db.users WHERE mail = '" + email + "'";
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
	
	/**
	 * this method select users based on email, if an empty string is passed, select all users
	 * 
	 * @param email
	 * @return an ArrayList of users
	 */
	public ArrayList<User> selectUsers(String email)
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
			String sql = "SELECT * FROM eventech_db.users WHERE mail LIKE '%" + email + "%'";
			ResultSet result = st.executeQuery(sql);

			ArrayList<User> listUser = new ArrayList<User>();
			while(result.next())
			{
				User us = new User();
				us.setDomaineActivite(result.getString("domaine_activite"));
				us.setIdUser(result.getInt("id_user"));
				us.setMail(result.getString("mail"));
				us.setNom(result.getString("nom"));
				us.setPrenom(result.getString("prenom"));
				us.setAdmin(result.getBoolean("is_admin"));
				listUser.add(us);
			}

			return listUser;
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
		return null;
	}
	
	/**
	 * this method deletes a user from the database
	 * 
	 * @param id of user to delete
	 */
	public void deleteUser(int id)
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
			String sql = "DELETE FROM eventech_db.users WHERE id_user = " + id;
			ps = cn.prepareStatement(sql);
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
	
	/**
	 * this method update user's information in the database.
	 * @return 0 if failed >0 otherwise
	 */
	public int updateUser()
	{
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Password password = new Password();
			String url = "jdbc:mysql://localhost:3306/eventech_db"
					+ "?verifyServerCertificate=false&useSSL=true";
			String user = "root";
			String pwd = password.getPassword();

			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("UPDATE `users` SET nom = ?, prenom = ?,"
					+ " mail = ?, domaine_activite = ? WHERE id_user = ?;");
			ps.setString(1, model.getNom());
			ps.setString(2, model.getPrenom());
			ps.setString(3, model.getMail());
			ps.setString(4, model.getDomaineActivite());
			ps.setInt(5, model.getIdUser());

			int s = ps.executeUpdate();
			return s;
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
		return 0;
	}
	
	public int getUserId() {
		return model.getIdUser();
	}
	public void setUserId(int idUser) {
		model.setIdUser(idUser);
	}
	public int getUserNumEmploye() {
		return model.getNumEmploye();
	}
	public void setUserNumEmploye(int numEmploye) {
		model.setNumEmploye(numEmploye);
	}
	public String getUserNom() {
		return model.getNom();
	}
	public void setUserNom(String nom) {
		model.setNom(nom);
	}
	public String getUserPrenom() {
		return model.getPrenom();
	}
	public void setUserPrenom(String prenom) {
		model.setPrenom(prenom);
	}
	public String getUserMail() {
		return model.getMail();
	}
	public void setUserMail(String mail) {
		model.setMail(mail);
	}
	public String getUserMotDePasse() {
		return model.getMotDePasse();
	}
	public void setUserMotDePasse(String motDePasse) {
		model.setMotDePasse(motDePasse);
	}
	public String getUserDomaineActivite() {
		return model.getDomaineActivite();
	}
	public void setUserDomaineActivite(String domaineActivite) {
		model.setDomaineActivite(domaineActivite);
	}
	public boolean isUserAdmin() {
		return model.isAdmin();
	}
	public void setUserAdmin(boolean admin) {
		model.setAdmin(admin);
	}
}
