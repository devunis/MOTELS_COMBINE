package controller.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/bookingin")
public class BookingIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        BookingBean bean = new BookingBean();
        bean.setImg(req.getParameter("img"));
        bean.setName(req.getParameter("name"));
        bean.setInfo(req.getParameter("info"));
        bean.setPrice(req.getParameter("price"));
        bean.setCheckin(req.getParameter("checkIn"));
        bean.setCheckout(req.getParameter("checkOut"));
        bean.setAdults(Integer.parseInt(req.getParameter("adults")));
        bean.setKids(Integer.parseInt(req.getParameter("kids")));
        bean.setRooms(Integer.parseInt(req.getParameter("rooms")));
        bean.setId((String)session.getAttribute("email"));

        BookingDAO dao = new BookingDAO();
        dao.insertBooking(bean);

        resp.sendRedirect("index.jsp?main=/booking/bookingmain.jsp");

    }
}
