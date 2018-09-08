package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;

import model.Event;
import password.Password;

public class EventController {

	Event model = new Event();
	
	
	/**
	 * this method do a insert on the table "events" using the model's values.
	 * 
	 * @return the number of rows affected by the query, or 0 if something went wrong
	 */
	public int insertEvent()
	{
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Password password = new Password();
			String url = "jdbc:mysql://localhost:3306/eventech_db";
			String user = "root";
			String pwd = password.getPassword();

			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("insert into events(`id_creator`,`nom_event`"
					+ ",`lieu`,`date_event`,`heure_event`"
					+ ",`type_event`,`description_event`,`prix`,`domaine`) "
					+ "values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, model.getIdCreator());
			ps.setString(2, model.getNomEvent());
			ps.setString(3, model.getLieu());
			ps.setDate(4, model.getDateEvent());
			ps.setTime(5, model.getHeureEvent());
			ps.setString(6, model.getTypeEvent());
			ps.setString(7, model.getDescription());
			ps.setDouble(8, model.getPrix());
			ps.setString(9, model.getDomaine());

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
	public int getEventIdCreator() {
		return model.getIdCreator();
	}
	public void setEventIdCreator(int idCreator) {
		model.setIdCreator(idCreator);
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
