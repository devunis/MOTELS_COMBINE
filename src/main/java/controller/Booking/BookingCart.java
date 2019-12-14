package controller.Booking;

import model.booking.BookingBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/insert-cart")
public class BookingCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
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
        List<BookingBean> beans = (ArrayList<BookingBean>)session.getAttribute("cart");
        beans.add(bean);
        session.setAttribute("cart",beans);

        resp.sendRedirect("index.jsp?main=cart.jsp");
    }
}
