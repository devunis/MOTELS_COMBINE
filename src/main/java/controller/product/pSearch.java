package controller.product;


import model.board.BoardBean;
import model.board.BoardDAO;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/psearch" }, asyncSupported = true)
public class pSearch extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        req.setCharacterEncoding("UTF-8");
        String checkIn = req.getParameter("start");
        String checkOut = req.getParameter("end");
        String loc = req.getParameter("loc");
        String adults = req.getParameter("adults");
        String kids = req.getParameter("kids");
        String rooms = req.getParameter("rooms");


        System.out.println(checkIn);
        System.out.println(checkOut);
        System.out.println(loc);
        System.out.println(adults);
        System.out.println(kids);
        System.out.println(rooms);

        session.setAttribute("checkIn",checkIn);
        session.setAttribute("checkOut",checkOut);
        session.setAttribute("loc",loc);
        session.setAttribute("adults",adults);
        session.setAttribute("kids",kids);
        session.setAttribute("rooms",rooms);



        final AsyncContext asyncContext = req.startAsync(req,resp);
        final HttpServletRequest request = (HttpServletRequest) asyncContext.getRequest();
        final HttpServletResponse response = (HttpServletResponse) asyncContext.getResponse();
        request.setCharacterEncoding("UTF-8");

        asyncContext.addListener(new AsyncListener() {
            @Override
            public void onComplete(AsyncEvent asyncEvent) throws IOException {
                ArrayList<pInfo> mlist = new Process().Get();

                request.setAttribute("mlist", mlist);
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?main=pro.jsp");
                try {
                    dispatcher.forward(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onTimeout(AsyncEvent asyncEvent) throws IOException {
                System.out.println("time out");
            }
            @Override
            public void onError(AsyncEvent asyncEvent) throws IOException {
                System.out.println("Error!!!!!!!!!!!!!!!!!!!!!!");
            }
            @Override
            public void onStartAsync(AsyncEvent asyncEvent) throws IOException {
            }
        });
        asyncContext.setTimeout(3000);
        asyncContext.start(new Runnable() {
            @Override
            public void run() {
                response.setContentType("text/html");
                try {
                    response.getWriter().println("<h1>Loading~</h1>");
                } catch (IOException e) {
                    e.printStackTrace();
                }
                asyncContext.complete();
            }
        });
    }
}
