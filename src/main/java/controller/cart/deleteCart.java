package controller.cart;

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

@WebServlet("/delete-cart")
public class deleteCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int no = Integer.parseInt(req.getParameter("no").trim());
        HttpSession session = req.getSession();
        List<BookingBean> cbean = (ArrayList<BookingBean>)session.getAttribute("cart");
        cbean.remove(no);
        if(cbean.isEmpty()){
            session.setAttribute("cart",null);
        }
        resp.sendRedirect("/cart");
    }
}
