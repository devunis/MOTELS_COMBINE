package controller.Booking;

public class BookingBean {
    int no;
    String motel;
    String loc;
    String name;
    String checkin;
    String checkout;
    String price;
    int adults;
    int kids;
    int rooms;
    String email;

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }


    public String getMotel() {
        return motel;
    }

    public void setMotel(String motel) {
        this.motel = motel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCheckin() {
        return checkin;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getAdults() {
        return adults;
    }

    public void setAdults(int adults) {
        this.adults = adults;
    }

    public int getKids() {
        return kids;
    }

    public void setKids(int kids) {
        this.kids = kids;
    }

    public int getRooms() {
        return rooms;
    }

    public void setRooms(int rooms) {
        this.rooms = rooms;
    }

    @Override
    public String toString() {
        String msg = "이름 " + motel +
                " 위치 : " + loc + 
                " 예약자 : " + name +
                " 체크인 : " + checkin +
                " 체크아웃 : " + checkout +
                " 가격 : " + price +
                " 어른 : " + adults +
                " 아동 : " + kids +
                " 방 : " + rooms;
        return msg;

    }
}
