package controller.cart;

import model.booking.BookingBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class mainCart extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = (String)session.getAttribute("email");
        if (email == null){
            resp.sendRedirect("Error.jsp");
        }
        else{
            List<BookingBean> beans = (ArrayList<BookingBean>)session.getAttribute("cart");
            req.setAttribute("cart",beans);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=cart.jsp");
            dispatcher.forward(req,resp);
        }
    }
}
