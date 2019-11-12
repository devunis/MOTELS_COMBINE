package controller.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/booking")
public class BookingMain extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        BookingBean bbean = new BookingBean();
        bbean.setMotel(req.getParameter("pName"));
        bbean.setPrice(req.getParameter("pPrice"));


        HttpSession session = req.getSession();
        try {
            bbean.setName((String)session.getAttribute("name"));
            bbean.setCheckin((String)session.getAttribute("checkIn"));
            bbean.setCheckout((String)session.getAttribute("checkOut"));
            bbean.setLoc((String)session.getAttribute("loc"));
//            bbean.setAdults((int)session.getAttribute("adults"));
//            bbean.setKids((int)session.getAttribute("kids"));
//            bbean.setRooms((int)session.getAttribute("rooms"));
        }catch (Exception e){
            System.out.println("세션에서 불러오기 실패");
        }


        System.out.println(bbean);
        resp.sendRedirect("index.jsp");
    }

}
