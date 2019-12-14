package controller.Booking;

import model.booking.BookingDAO;
import model.member.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/bookingCancel")
public class BookingCancel extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String pwd = req.getParameter("pwd");
        MemberDAO mdao = new MemberDAO();
        if (mdao.hasMember((String)session.getAttribute("email"),pwd)){
            BookingDAO bdao = new BookingDAO();
            bdao.cancelBooking(Integer.parseInt(req.getParameter("no")));
            resp.sendRedirect("index.jsp?main=/booking/bookingmain.jsp");
        }
        else{
            resp.sendRedirect("Error.jsp");
        }

    }
}
