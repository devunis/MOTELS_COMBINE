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
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/psearch")

public class pSearch extends HttpServlet {
    ArrayList<String> urlList = new ArrayList<>();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("############################");
        for (String a:
             urlList) {
            System.out.println(a);
        }
        System.out.println("##########################");


        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int pageNum = Integer.parseInt(req.getParameter("pageNum"));
        System.out.println("url : " + urlList.get(pageNum));
        Document document = null;
        try {
            document = Jsoup.connect(urlList.get(pageNum)).get();
        } catch (Exception e) {
            e.printStackTrace();
        }

        ArrayList<pInfo> mlist = new Process().Get(urlList.get(pageNum));;
        req.setAttribute("start",  req.getParameter("checkIn"));
        req.setAttribute("end", req.getParameter("checkOut"));
        req.setAttribute("adults",req.getParameter("adults"));
        req.setAttribute("kids",req.getParameter("'kids"));
        req.setAttribute("rooms",req.getParameter("rooms"));
        req.setAttribute("mlist", mlist);
        req.setAttribute("urlList", urlList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=pro.jsp?paging=pcon.jsp");
        dispatcher.forward(req,resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");


        if(req.getParameter("pageNum") == null) {
            urlList = new ArrayList<>();
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

            final String url = "https://www.booking.com/searchresults.ko.html?aid=304142&label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYARe4ARnIAQzYAQHoAQH4AQuIAgGoAgO4Atbbl-8FwAIB&sid=51246f8db467a7f94185d2154db734bf&tmpl=searchresults&checkin_month="+checkInMonth+"&checkin_monthday="+checkInDay+"&checkin_year="+checkInYear+"&checkout_month="+checkOutMonth+"&checkout_monthday="+checkOutDay+"&checkout_year="+checkOutYear+"&city=-716583&class_interval=1&dest_id=-716583&dest_type=city&dtdisc=0&from_sf=1&group_adults="+adults+"&group_children="+kids+"&inac=0&index_postcard=0&label_click=undef&no_rooms="+rooms+"&postcard=0&raw_dest_type=city&room1=A%2CA&sb_price_type=total&shw_aparth=1&slp_r_match=0&src=searchresults&srpvid=28e1248a835a00d1&ss="+loc+"&ss_all=0&ssb=empty&sshis=0&ssne=서울&ssne_untouched=서울&top_ufis=1&nflt=ht_id%3D204%3Bht_id%3D205%3Bpri%3D1%3B&rdf=&update_av=1";
            System.out.println("url : " + url);
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
            ArrayList<pInfo> mlist = new Process().Get(url);

            req.setAttribute("start", checkIn);
            req.setAttribute("end", checkOut);
            req.setAttribute("adults",adults);
            req.setAttribute("kids",kids);
            req.setAttribute("rooms",rooms);
            req.setAttribute("mlist", mlist);
            req.setAttribute("urlList", urlList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=pro.jsp?paging=pcon.jsp");
            dispatcher.forward(req,resp);
        }
    }
}
