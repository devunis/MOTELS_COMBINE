package controller.product;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.ArrayList;

class Process {
    public ArrayList<pInfo> Get(){
        ArrayList<pInfo> mlist = new ArrayList<>();

        Document document = null;
        final String url = "https://www.booking.com/searchresults.ko.html?aid=304142&label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARnIAQzYAQPoAQGIAgGoAgO4ArCMoe4FwAIB&sid=51246f8db467a7f94185d2154db734bf&tmpl=searchresults&ac_click_type=b&ac_position=0&checkin_month=11&checkin_monthday=12&checkin_year=2019&checkout_month=11&checkout_monthday=13&checkout_year=2019&class_interval=1&dest_id=-716583&dest_type=city&dtdisc=0&from_sf=1&group_adults=1&group_children=0&iata=SEL&inac=0&index_postcard=0&label_click=undef&no_rooms=1&percent_htype_hotel=1&postcard=0&raw_dest_type=city&room1=A&sb_price_type=total&search_selected=1&shw_aparth=1&slp_r_match=0&src=searchresults&srpvid=0ac481b5f4a90107&ss=%EC%84%9C%EC%9A%B8%2C%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD&ss_all=0&ss_raw=%EA%B0%95%EB%B6%81&ssb=empty&sshis=0&ssne=%EA%B0%95%EB%B6%81%EA%B5%AC%EB%B3%B4%EA%B1%B4%EC%86%8C&ssne_untouched=%EA%B0%95%EB%B6%81%EA%B5%AC%EB%B3%B4%EA%B1%B4%EC%86%8C&top_ufis=1&nflt=ht_id%3D205%3Bht_id%3D204%3Bpri%3D1%3B&rsf=&update_av=1";
        try {
            document = Jsoup.connect(url).get();

        }catch (Exception e ){
            e.printStackTrace();
        }
        Elements element = document.select("body div#right div#ajaxsrwrap");

        Elements name = element.select("h3.sr-hotel__title span.sr-hotel__name");
        Elements price = element.select("div.prco-ltr-right-align-helper span.bui-u-sr-only");
        Elements img = element.select("div.sr_item_photo img.hotel_image");

        for (int i=0; i<20; i++) {
            pInfo mi = new pInfo();
            mi.setName(name.get(i).text());
            mi.setPrice(price.get(i).text());
            mi.setImg(img.get(i).attr("src"));
            mlist.add(mi);
        }

        for(int i=0; i<mlist.size(); i++) System.out.println(mlist.get(i));
        return mlist;

    }
}
