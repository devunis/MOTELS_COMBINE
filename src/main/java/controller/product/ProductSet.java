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
import java.util.Arrays;
import java.util.List;

@WebServlet("/set.do")
public class ProductSet extends HttpServlet{
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List plist = new ArrayList();
        Document doc = Jsoup.connect("https://www.hotelscombined.co.kr/Hotels/Search?checkin=2019-11-17&checkout=2019-11-18&Rooms=1&adults_1=2&languageCode=KO&currencyCode=KRW&destination=place%3AGangbuk_gu").get();
        String title = doc.title();
        System.out.println(title);
        Elements elements = doc.getElementsByClass("hc-searchresultitem");
        for(Element ele : elements) {
            plist.add(ele);
        }
        System.out.println(Arrays.asList(plist));
    }
}
