package controller;

import java.sql.Date;
import java.sql.Time;

import model.Event;

public class EventController {

	Event model;
	
	public int getIdEvent() {
		return model.getIdEvent();
	}
	public void setIdEvent(int idEvent) {
		model.setIdEvent(idEvent);
	}
	public String getNomEvent() {
		return model.getNomEvent();
	}
	public void setNomEvent(String nomEvent) {
		model.setNomEvent(nomEvent);
	}
	public String getLieuEvent() {
		return model.getLieu();
	}
	public void setLieuEvent(String lieu) {
		model.setLieu(lieu);;
	}
	public Date getDateEvent() {
		return model.getDateEvent();
	}
	public void setDateEvent(Date dateEvent) {
		model.setDateEvent(dateEvent);
	}
	public Time getHeureEvent() {
		return model.getHeureEvent();
	}
	public void setHeureEvent(Time heureEvent) {
		model.setHeureEvent(heureEvent);
	}
	public String getTypeEvent() {
		return model.getTypeEvent();
	}
	public void setTypeEvent(String typeEvent) {
		model.setTypeEvent(typeEvent);
	}
	public int getEventIdUser() {
		return model.getIdUser();
	}
	public void setEventIdUser(int idUser) {
		model.setIdUser(idUser);
	}
	public String getDescriptionEvent() {
		return model.getDescription();
	}
	public void setDescriptionEvent(String description) {
		model.setDescription(description);
	}
	public int getNbPersonnesEvent() {
		return model.getNbPersonnes();
	}
	public void setNbPersonnesEvent(int nbPersonnes) {
		model.setNbPersonnes(nbPersonnes);
	}
	public double getMoyenneNoteEvent() {
		return model.getMoyenneNote();
	}
	public void setMoyenneNoteEvent(double moyenneNote) {
		model.setMoyenneNote(moyenneNote);
	}
	public double getPrixEvent() {
		return model.getPrix();
	}
	public void setPrixEvent(double prix) {
		model.setPrix(prix);
	}
	public String getDomaineEvent() {
		return model.getDomaine();
	}
	public void setDomaineEvent(String domaine) {
		model.setDomaine(domaine);
	}
}
