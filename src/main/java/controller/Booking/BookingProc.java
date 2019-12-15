package controller.Booking;

import model.booking.BookingBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/booking.do")
public class BookingProc extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        BookingBean bean = new BookingBean();
        String email = (String) session.getAttribute("email");
        if (email == null){
            resp.sendRedirect("Error.jsp");
        }
        else {
            bean.setImg(req.getParameter("img"));//
            bean.setName(req.getParameter("name"));//
            bean.setInfo(req.getParameter("info"));//
            bean.setPrice(req.getParameter("price"));//
            bean.setCheckin(req.getParameter("checkIn"));
            bean.setCheckout(req.getParameter("checkOut"));
            bean.setAdults(Integer.parseInt(req.getParameter("adults")));
            bean.setKids(Integer.parseInt(req.getParameter("kids")));
            bean.setRooms(Integer.parseInt(req.getParameter("rooms")));
            System.out.println(bean);

            bean.setId(email);

            req.setAttribute("bean", bean);

            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=reserve.jsp");
            dispatcher.forward(req, resp);
        }


    }
}
