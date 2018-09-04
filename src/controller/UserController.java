package controller;

import model.User;

public class UserController {

	User model;
	
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
