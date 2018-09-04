package model;

public class User {

	int idUser;
	int numEmploye;
	String nom;
	String prenom;
	String mail;
	String motDePasse;
	String domaineActivite;
	boolean admin;

	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getNumEmploye() {
		return numEmploye;
	}
	public void setNumEmploye(int numEmploye) {
		this.numEmploye = numEmploye;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMotDePasse() {
		return motDePasse;
	}
	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	public String getDomaineActivite() {
		return domaineActivite;
	}
	public void setDomaineActivite(String domaineActivite) {
		this.domaineActivite = domaineActivite;
	}
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
}
