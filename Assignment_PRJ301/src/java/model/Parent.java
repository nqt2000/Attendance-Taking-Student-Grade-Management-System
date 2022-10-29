/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Tunnnnnz
 */
public class Parent {
    private int prid;
    private String prname;
    private String premail;
    private String prphone;
    private ArrayList<Student> studs = new ArrayList<Student>();

    public ArrayList<Student> getStuds() {
        return studs;
    }

    public void setStuds(ArrayList<Student> studs) {
        this.studs = studs;
    }

    public int getPrid() {
        return prid;
    }

    public void setPrid(int prid) {
        this.prid = prid;
    }

    public String getPrname() {
        return prname;
    }

    public void setPrname(String prname) {
        this.prname = prname;
    }

    public String getPremail() {
        return premail;
    }

    public void setPremail(String premail) {
        this.premail = premail;
    }

    public String getPrphone() {
        return prphone;
    }

    public void setPrphone(String prphone) {
        this.prphone = prphone;
    }
    
    
}
