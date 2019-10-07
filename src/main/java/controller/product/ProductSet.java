package controller.product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/set.do")
public class ProductSet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        reqPro(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        reqPro(req,resp);
    }
    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String startDate = req.getParameter("start");
        String endDate = req.getParameter("end");
        String loc = req.getParameter("loc");
        req.setAttribute("startData", startDate);
        req.setAttribute("endData", endDate);
        req.setAttribute("loc",loc);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/search");
        dispatcher.forward(req,resp);
    }

}
