package controller.product;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/psearch_next")
public class urlSearch extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");


        final String url = req.getParameter("url");
        ArrayList<String> urlList = new ArrayList<>();
        Document document = null;
        try {
            document = Jsoup.connect(url).get();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Elements element = document.select("body div#right div#ajaxsrwrap");
        Elements list = element.select("ul.bui-pagination__list li a.bui-pagination__link");
        for (Element li : list) {
            urlList.add("http://www.booking.com" + li.attr("href"));
            System.out.println("http://www.booking.com" + li.attr("href"));
        }
        ArrayList<pInfo> mlist = new Process().Get(url);
        ;
        System.out.println("page : " + urlList.size());

        req.setAttribute("mlist", mlist);
        req.setAttribute("urlList", urlList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=pro.jsp?paging=pcon.jsp");
        dispatcher.forward(req, resp);

    }
}
