/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Tunnnnnz
 */
public class Student {
    private int stid;
    private String stname;
    private boolean gender;
    private Date dob;
    private String rollnumber;
    private String stphone;
    private String email;
    private String stidcard;
    private Date dateofissue;
    private String placeofissue;
    private String prname;
    private String prphone;
    private String premail;
    private String prjob;
    private ArrayList<Group> groups = new ArrayList<>();
    private ArrayList<Attendance> atts = new ArrayList<>();

    public int getStid() {
        return stid;
    }

    public void setStid(int stid) {
        this.stid = stid;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getRollnumber() {
        return rollnumber;
    }

    public void setRollnumber(String rollnumber) {
        this.rollnumber = rollnumber;
    }

    public String getStphone() {
        return stphone;
    }

    public void setStphone(String stphone) {
        this.stphone = stphone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStidcard() {
        return stidcard;
    }

    public void setStidcard(String stidcard) {
        this.stidcard = stidcard;
    }

    public Date getDateofissue() {
        return dateofissue;
    }

    public void setDateofissue(Date dateofissue) {
        this.dateofissue = dateofissue;
    }

    public String getPlaceofissue() {
        return placeofissue;
    }

    public void setPlaceofissue(String placeofissue) {
        this.placeofissue = placeofissue;
    }

    public String getPrname() {
        return prname;
    }

    public void setPrname(String prname) {
        this.prname = prname;
    }

    public String getPrphone() {
        return prphone;
    }

    public void setPrphone(String prphone) {
        this.prphone = prphone;
    }

    public String getPremail() {
        return premail;
    }

    public void setPremail(String premail) {
        this.premail = premail;
    }

    public String getPrjob() {
        return prjob;
    }

    public void setPrjob(String prjob) {
        this.prjob = prjob;
    }
    
    
}