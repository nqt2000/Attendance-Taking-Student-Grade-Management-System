/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            String sql = "SELECT [roll_number]\n"
                    + "      ,[sname]\n"
                    + "  FROM Student"
                    + "WHERE s.roll_number = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Student s = new Student();
                String roll_number = rs.getString("roll_number");
                String sname = rs.getString("sname");
                s.setRoll_number(roll_number);
                s.setName(sname);
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<>();
        String sql = "SELECT [roll_number]\n"
                + "      ,[sname]\n"
                + "      ,[dob]\n"
                + "      ,[gender]\n"
                + "      ,[address]\n"
                + "      ,[phone_number]\n"
                + "      ,[email]\n"
                + "  FROM Student";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                String roll_number = rs.getString("roll_number");
                String sname = rs.getString("sname");
                boolean gender = rs.getBoolean("gender");
                Date dob = rs.getDate("dob");
                String address = rs.getString("address");
                String phone_number = rs.getString("phone_number");
                String email = rs.getString("email");
                s.setRoll_number(roll_number);
                s.setName(sname);
                s.setDob(dob);
                s.setGender(gender);
                s.setAddress(address);
                s.setPhone_number(phone_number);
                s.setEmail(email);
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

}
