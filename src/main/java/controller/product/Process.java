package controller.product;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Process {
    public ArrayList<pInfo> Get(String url){
        ArrayList<pInfo> mlist = new ArrayList<>();

        Document document = null;
        try {
            document = Jsoup.connect(url).get();

        }catch (Exception e ){
            e.printStackTrace();
        }
        Elements element = document.select("body div#right div#ajaxsrwrap");

        Elements name = element.select("h3.sr-hotel__title span.sr-hotel__name");
        Elements price = element.select("div.prco-ltr-right-align-helper span.bui-u-sr-only");
        Elements img = element.select("div.sr_item_photo img.hotel_image");
        Elements info = element.select("div.roomNameInner strong");
        List<Integer> item = new ArrayList<>();
        System.out.println("process start!!");
        item.add(price.size()); item.add(img.size()); item.add(info.size());
        int num = Collections.min(item);
        System.out.println("num : " + num);
        for (int i=0; i< num; i++) {
            pInfo mi = new pInfo();
            mi.setName(name.get(i).text());
            mi.setPrice(price.get(i).text());
            mi.setImg(img.get(i).attr("src"));
            mi.setInfo(info.get(i).text());
            mlist.add(mi);
            System.out.println(mi);
        };
        return mlist;

    }
}
