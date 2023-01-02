package Servlet;

import DAO.TourDAO;
import model.Tour;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "tourServlet", value = "/home")
public class TourServlet extends HttpServlet {

    private final TourDAO tourDAO = new TourDAO();

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            listTour(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            log(e.getMessage());
        }
    }

    public void destroy() {
    }
    private void listTour(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Tour> listTours = tourDAO.getListTour();
        request.setAttribute("listTours", listTours);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

}
