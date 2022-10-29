/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author Tunnnnnz
 */
public class SessionDBContext extends DBContext<Session> {

    public void updateAttendance(Session model) {
        try {
            connection.setAutoCommit(false);
            String sql_update_attended = "UPDATE [Session]\n"
                    + "SET [attended] = 1\n"
                    + "WHERE sesid = ?";
            PreparedStatement stm_update_attended = connection.prepareStatement(sql_update_attended);
            stm_update_attended.setInt(1, model.getId());
            stm_update_attended.executeUpdate();

            //remove old attandances 
            String sql_remove_attendences = "DELETE Attendance\n"
                    + "WHERE sesid = ?";
            PreparedStatement stm_remove_attendances = connection.prepareStatement(sql_remove_attendences);
            stm_remove_attendances.setInt(1, model.getId());
            stm_remove_attendances.executeUpdate();

            //add new attandances
            for (Attendance att : model.getAtts()) {
                String sql_insert_att = "INSERT INTO [Attendance]\n"
                        + "           ([sesid]\n"
                        + "           ,[stdid]\n"
                        + "           ,[present]\n"
                        + "           ,[description],record_time)\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,GETDATE())";
                PreparedStatement stm_insert_att = connection.prepareStatement(sql_insert_att);
                stm_insert_att.setInt(1, model.getId());
                stm_insert_att.setInt(2, att.getStudent().getStdid());
                stm_insert_att.setBoolean(3, att.isPresent());
                stm_insert_att.setString(4, att.getDescription());
                stm_insert_att.executeUpdate();
            }

            connection.commit();
        } catch (SQLException ex) {
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        try {
            String sql = "SELECT ses.sesid,ses.date,ses.[index],ses.attended,taker \n"
                    + "	,g.gid,g.gname\n"
                    + "	,sub.subid,sub.subname\n"
                    + "	,l.lid,l.lname\n"
                    + "	,r.rid,r.rname\n"
                    + "	,t.tid,t.[description]\n"
                    + "FROM [Session] ses\n"
                    + "	INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "	INNER JOiN Room r ON r.rid = ses.rid\n"
                    + "	INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "	INNER JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "	INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "WHERE ses.sesid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Session ses = new Session();
                ses.setId(rs.getInt("sesid"));
                ses.setDate(rs.getDate("date"));
                ses.setIndex(rs.getInt("index"));
                ses.setAttended(rs.getBoolean("attended"));
                ses.setTaker(rs.getString("taker"));
                Group g = new Group();
                ses.setGroup(g);
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                Room r = new Room();
                ses.setRoom(r);
                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                TimeSlot t = new TimeSlot();
                ses.setSlot(t);
                t.setId(rs.getInt("tid"));
                t.setDescription(rs.getString("description"));
                Lecturer l = new Lecturer();
                ses.setLecturer(l);
                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                Subject sub = new Subject();
                g.setSubject(sub);
                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                return ses;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
