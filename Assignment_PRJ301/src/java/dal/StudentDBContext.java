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
import model.Parent;
import model.Student;

/**
 *
 * @author Tunnnnnz
 */
public class StudentDBContext extends DBContext<Student> {

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        try {
            String sql = "SELECT s.stdname, s.stdgender, s.dob, s.stdphone , s.stdemail,\n"
                    + "s.[address], s.idcard, s.dateofissue,\n"
                    + "s.placeofissue, p.prname, p.prphone, p.premail\n"
                    + "FROM Student s\n"
                    + "INNER JOIN Parent p ON p.prid = s.prid\n"
                    + "WHERE s.stdid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Student stud = new Student();
                stud.setStdid(id);
                stud.setStdname(rs.getString("stdname"));
                stud.setGender(rs.getBoolean("stdgender"));
                stud.setDob(rs.getDate("dob"));
                stud.setStdphone(rs.getString("stdphone"));
                stud.setStdemail(rs.getString("stdemail"));
                stud.setAddress(rs.getString("address"));
                stud.setIdcard(rs.getString("idcard"));
                stud.setDateofissue(rs.getDate("dateofissue"));
                stud.setPlaceofissue(rs.getString("placeofissue"));
                
                Parent p = new Parent();
                p.setPrname(rs.getString("prname"));
                p.setPremail(rs.getString("premail"));
                p.setPrphone(rs.getString("prphone"));
                stud.setParent(p);
                return stud;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
