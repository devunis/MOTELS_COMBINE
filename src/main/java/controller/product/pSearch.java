package controller.product;

//import jdk.jshell.execution.JdiDefaultExecutionControl;
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
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/psearch" }, asyncSupported = true)
public class pSearch extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String checkIn = req.getParameter("start");
        String checkOut = req.getParameter("end");
        String loc = req.getParameter("loc");
        String adults = req.getParameter("adults");
        String kids =  req.getParameter("kids");
        String rooms =  req.getParameter("rooms");
        System.out.println(checkIn);
        System.out.println(checkOut);
        String [] in = checkIn.split("-");
        String [] out = checkOut.split("-");
        String checkInYear = in[0];
        String checkInMonth = in[1];
        String checkInDay = in[2];
        String checkOutYear = out[0];
        String checkOutMonth = out[1];
        String checkOutDay = out[2];

        final String url = "https://www.booking.com/searchresults.ko.html?aid=304142&label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARnIAQzYAQPoAQGIAgGoAgO4ArCMoe4FwAIB&sid=51246f8db467a7f94185d2154db734bf&tmpl=searchresults&age=12&checkin_month=11&checkin_monthday=27&checkin_year=2019&checkout_month=11&checkout_monthday=28&checkout_year=2019&city=-716583&class_interval=1&dest_id=-716583&dest_type=city&from_sf=1&group_adults=1&group_children=0&label_click=undef&no_rooms=1&raw_dest_type=city&room1=A&sb_price_type=total&shw_aparth=1&slp_r_match=0&src=searchresults&srpvid=bbfa7744ca8300e6&ss=서울&ssb=empty&ssne=서울&ssne_untouched=서울&top_ufis=1&nflt=pri=1;pri=2;&rsf=";
        System.out.println("url : " + url);
        final AsyncContext asyncContext = req.startAsync(req,resp);
        final HttpServletRequest request = (HttpServletRequest) asyncContext.getRequest();
        final HttpServletResponse response = (HttpServletResponse) asyncContext.getResponse();
        response.setCharacterEncoding("UTF-8");


        asyncContext.addListener(new AsyncListener() {
            @Override
            public void onComplete(AsyncEvent asyncEvent) throws IOException {
                ArrayList<pInfo> mlist  = new Process().Get(url);
                //new test().Get(url);
                request.setCharacterEncoding("UTF-8");
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
                request.setCharacterEncoding("UTF-8");
            }
        });
        //asyncContext.setTimeout();
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
