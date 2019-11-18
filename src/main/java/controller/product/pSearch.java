package controller.product;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.util.ArrayList;

@WebServlet(urlPatterns = {"/psearch" })
public class pSearch extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<String> urlList = null;

        if(req.getParameter("num") == null) {
            HttpSession session = req.getSession();
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
            urlList = new ArrayList<>();
            Document document = null;

            try {
                document = Jsoup.connect(url).get();
            } catch (Exception e) {
                e.printStackTrace();
            }
            Elements element = document.select("body div#right div#ajaxsrwrap");
            Elements list = element.select("ul.bui-pagination__list li a.bui-pagination__link");
            for (Element li : list) {
                urlList.add("http://www.booking.com"+li.attr("href"));
                System.out.println("http://www.booking.com"+li.attr("href"));
            }
            ArrayList<pInfo> mlist = new ArrayList<>();
            System.out.println("page : " + urlList.size());
            mlist  = new Process().Get(urlList.get(0));


            System.out.println("finish");
            req.setAttribute("mlist", mlist);
            req.setAttribute("urlList", urlList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=pro.jsp?paging=pcon.jsp");
            dispatcher.forward(req,resp);
        } else {
            final String url = "https://www.booking.com/searchresults.ko.html?aid=304142&label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARnIAQzYAQPoAQGIAgGoAgO4ArCMoe4FwAIB&sid=51246f8db467a7f94185d2154db734bf&tmpl=searchresults&age=12&checkin_month=11&checkin_monthday=27&checkin_year=2019&checkout_month=11&checkout_monthday=28&checkout_year=2019&city=-716583&class_interval=1&dest_id=-716583&dest_type=city&from_sf=1&group_adults=1&group_children=0&label_click=undef&no_rooms=1&raw_dest_type=city&room1=A&sb_price_type=total&shw_aparth=1&slp_r_match=0&src=searchresults&srpvid=bbfa7744ca8300e6&ss=서울&ssb=empty&ssne=서울&ssne_untouched=서울&top_ufis=1&nflt=pri=1;pri=2;&rsf=";
            System.out.println("url : " + url);
            urlList = new ArrayList<>();
            Document document = null;

            try {
                document = Jsoup.connect(url).get();
            } catch (Exception e) {
                e.printStackTrace();
            }
            Elements element = document.select("body div#right div#ajaxsrwrap");
            Elements list = element.select("ul.bui-pagination__list li a.bui-pagination__link");
            for (Element li : list) {
                urlList.add("http://www.booking.com"+li.attr("href"));
                System.out.println("http://www.booking.com"+li.attr("href"));
            }
            int  num = Integer.parseInt(req.getParameter("num"));
            System.out.println(num);
            ArrayList<pInfo> mlist = new Process().Get(urlList.get(num));
            req.setAttribute("mlist", mlist);
            req.setAttribute("urlList", urlList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=pro.jsp?paging=pcon.jsp");
            dispatcher.forward(req,resp);
        }


    }
}
