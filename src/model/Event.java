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
	int idCreator;
	String description;
	int nbPersonnes;
	double moyenneNote;
	double prix;
	String domaine;
	String month;
	String day;
	String year;
	
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
	public int getIdCreator() {
		return idCreator;
	}
	public void setIdCreator(int idCreator) {
		this.idCreator = idCreator;
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
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
}
