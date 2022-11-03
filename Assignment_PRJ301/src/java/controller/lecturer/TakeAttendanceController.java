/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.lecturer;

import dal.AttendanceDBContext;
import dal.SessionDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Attendance;
import model.Session;
import model.Student;

/**
 *
 * @author Tunnnnnz
 */
public class TakeAttendanceController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int sesid = Integer.parseInt(request.getParameter("id"));
        AttendanceDBContext attDB = new AttendanceDBContext();
        ArrayList<Attendance> atts = attDB.getAttsBySessionId(sesid);
        request.setAttribute("atts", atts);

        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(sesid);
        request.setAttribute("ses", ses);

//        if(DateTimeHelper.getDaystoCurrent(ses.getDate())>=2)
//            response.getWriter().println("this session is out of date");
//        else if(DateTimeHelper.getDaystoCurrent(ses.getDate())< 0)
//            response.getWriter().println("this session is not yet started");
//        else
        request.getRequestDispatcher("../view/lecturer/attendance.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Session ses = new Session();
        ses.setId(Integer.parseInt(request.getParameter("sesid")));
        ses.setTaker(request.getParameter("taker"));

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        String[] stdids = request.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attendance a = new Attendance();
            Student s = new Student();
            a.setStudent(s);
            a.setSession(ses);
            s.setStdid(Integer.parseInt(stdid));
            a.setPresent(request.getParameter("present" + stdid).equals("present"));
            a.setDescription(request.getParameter("description" + stdid));
            a.setTaker(request.getParameter("taker") + account.getDisplayname() );
            ses.getAtts().add(a);
        }

        SessionDBContext db = new SessionDBContext();
        db.updateAttendance(ses);
        response.sendRedirect("takeatt?id=" + ses.getId());
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
