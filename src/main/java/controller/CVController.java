package controller;

import model.CV;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CVController")
public class CVController extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        CV cv = new CV();

        cv.setPosition(request.getParameter("position"));
        cv.setName(request.getParameter("name"));
        cv.setEmail(request.getParameter("email"));
        cv.setPhone(request.getParameter("phone"));
        cv.setAddress(request.getParameter("address"));
        cv.setEducation(request.getParameter("education"));
        cv.setExperience(request.getParameter("experience"));
        cv.setSkills(request.getParameter("skills"));
        cv.setLanguages(request.getParameter("languages"));
        cv.setSummary(request.getParameter("summary"));

        request.setAttribute("cv", cv);

        RequestDispatcher rd =
                request.getRequestDispatcher("cv.jsp");

        rd.forward(request, response);
    }
}