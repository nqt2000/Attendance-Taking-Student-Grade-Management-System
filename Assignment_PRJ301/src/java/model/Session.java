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
class Session {
     private int id;
    private Group group;
    private Lecturer lecturer;
    private Room room;
    private TimeSlot slot;
    private Date date;
    private int index;
    private boolean attanded;
    private ArrayList<Attendance> atts = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public TimeSlot getSlot() {
        return slot;
    }

    public void setSlot(TimeSlot slot) {
        this.slot = slot;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public boolean isAttanded() {
        return attanded;
    }

    public void setAttanded(boolean attanded) {
        this.attanded = attanded;
    }

    public ArrayList<Attendance> getAtts() {
        return atts;
    }

    public void setAtts(ArrayList<Attendance> atts) {
        this.atts = atts;
    }
    
}
