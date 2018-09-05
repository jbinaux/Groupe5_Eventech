package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import model.User;
import password.Password;

public class UserController {

	User model;
	
	/**
	 * this method do a insert on the table "users" using the model's values.
	 * 
	 * @return the number of rows affected by the query, or 0 if something went wrong
	 */
	public int insertUser()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Password password = new Password();
			String url = "jdbc:mysql://localhost:3306/eventech_db";
			String user = "root";
			String pwd = password.getPassword();

			Connection con = DriverManager.getConnection(url, user, pwd);

			PreparedStatement ps = con.prepareStatement("insert into users(`nom`,`prenom`,`mail`,`mot_de_passe`"
					+ ",`domaine_activite`) values(?,?,?,?,?)");
			ps.setString(1, model.getNom());
			ps.setString(2, model.getPrenom());
			ps.setString(3, model.getMail());
			ps.setString(4, model.getMotDePasse());
			ps.setString(5, model.getDomaineActivite());

			int s = ps.executeUpdate();
			return s;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
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
