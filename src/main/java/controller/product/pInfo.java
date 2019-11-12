package controller.product;

public class pInfo {
    private String name;
    private String price;
    private String img;
    private String info;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "pInfo{" +
                "name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", img='" + img + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
