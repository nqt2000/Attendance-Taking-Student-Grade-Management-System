/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Student;

/**
 *
 * @author Tunnnnnz
 */
@WebServlet(name="ListController", urlPatterns={"/student/list"})
public class ListController extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        StudentDBContext db = new StudentDBContext();
        ArrayList<Student> list = db.list();
        req.setAttribute("students", list);
        req.getRequestDispatcher("../view/lecturer/attendance.jsp").forward(req, resp);
    }
}
