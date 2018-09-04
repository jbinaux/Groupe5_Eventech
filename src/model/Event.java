package model;

import java.sql.Date;
import java.sql.Time;

public class Event {

	int idEvent;
	String nomEvent;
	String lieu;
	Date dateEvent;
	Time heureEvent;
	String typeEvent;
	int idUser;
	String description;
	int nbPersonnes;
	double moyenneNote;
	double prix;
	String domaine;
	
	public int getIdEvent() {
		return idEvent;
	}
	public void setIdEvent(int idEvent) {
		this.idEvent = idEvent;
	}
	public String getNomEvent() {
		return nomEvent;
	}
	public void setNomEvent(String nomEvent) {
		this.nomEvent = nomEvent;
	}
	public String getLieu() {
		return lieu;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public Date getDateEvent() {
		return dateEvent;
	}
	public void setDateEvent(Date dateEvent) {
		this.dateEvent = dateEvent;
	}
	public Time getHeureEvent() {
		return heureEvent;
	}
	public void setHeureEvent(Time heureEvent) {
		this.heureEvent = heureEvent;
	}
	public String getTypeEvent() {
		return typeEvent;
	}
	public void setTypeEvent(String typeEvent) {
		this.typeEvent = typeEvent;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getNbPersonnes() {
		return nbPersonnes;
	}
	public void setNbPersonnes(int nbPersonnes) {
		this.nbPersonnes = nbPersonnes;
	}
	public double getMoyenneNote() {
		return moyenneNote;
	}
	public void setMoyenneNote(double moyenneNote) {
		this.moyenneNote = moyenneNote;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getDomaine() {
		return domaine;
	}
	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}
}
