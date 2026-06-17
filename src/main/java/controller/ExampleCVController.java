package controller;

import model.CV;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ExampleCVController")
public class ExampleCVController extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        CV cv = new CV();

        cv.setPosition("Software Engineer");
        cv.setName("Ali Ahmad");
        cv.setEmail("ali.ahmad@gmail.com");
        cv.setPhone("012-3456789");
        cv.setAddress("No. 15 Jalan Melati,\nShah Alam,\nSelangor");
        cv.setSummary("Computer Science graduate with strong interest in software development and enterprise applications.");
        cv.setEducation("Bachelor of Computer Science, UiTM (2021-2025)\n" + "Foundation in Science, UiTM (2020-2021)");
        cv.setExperience("Software Developer Intern at ABC Technologies (2025)");
        cv.setSkills("Java\nSQL\nHTML\nCSS");
        cv.setLanguages("English\nMalay");

        request.setAttribute("cv", cv);

        RequestDispatcher rd =
                request.getRequestDispatcher("exampleCV.jsp");

        rd.forward(request, response);
    }
}