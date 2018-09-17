package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
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
			String url = "jdbc:mysql://localhost:3306/eventech_db"
					+ "?verifyServerCertificate=false&useSSL=true";
			String user = "root";
			String pwd = password.getPassword();

			cn = DriverManager.getConnection(url, user, pwd);
			ps = cn.prepareStatement("INSERT INTO events(`id_creator`,`nom_event`"
					+ ",`lieu`,`date_event`,`heure_event`"
					+ ",`type_event`,`description_event`,`prix`,`domaine`) "
					+ "VALUES(?,?,?,?,?,?,?,?,?)");
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
	
	
	/**
	 * This methods does a select on the database where the date of the event has to be greater than the current date
	 * 
	 * @return an ArrayList of the upcoming events
	 */
	public ArrayList<Event> selectUpcomingEvents()
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
			String sql = "SELECT * FROM events WHERE date_event >= CURDATE() ORDER BY date_event, heure_event";
			ResultSet result = st.executeQuery(sql);

			ArrayList<Event> listEvent = new ArrayList<Event>();
			while(result.next())
			{
				Event ev = new Event();
				
				ev.setIdEvent(result.getInt("id_event"));
				ev.setNomEvent(result.getString("nom_event"));
				ev.setLieu(result.getString("lieu"));
				ev.setDateEvent(result.getDate("date_event"));
				ev.setHeureEvent(result.getTime("heure_event"));
				ev.setTypeEvent(result.getString("type_event"));
				ev.setIdCreator(result.getInt("id_creator"));
				ev.setDescription(result.getString("description_event"));
				ev.setNbPersonnes(result.getInt("nb_personnes"));
				ev.setMoyenneNote(result.getDouble("moyenne_notes"));
				ev.setPrix(result.getInt("prix"));
				ev.setDomaine(result.getString("domaine"));
				
				listEvent.add(ev);
			}

			return listEvent;
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
	 * delete an event from the database
	 * 
	 * @param id of the event to delete
	 */
	public void deleteEvent(int id)
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
			String sql = "DELETE FROM eventech_db.events WHERE id_event = " + id;
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
