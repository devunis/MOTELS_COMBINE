package controller.Booking;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookingDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    private void getConnection() {
        try {
            Context con = new InitialContext();
            Context envCon = (Context) con.lookup("java:comp/env");
            DataSource ds = (DataSource) envCon.lookup("jdbc/mydb");// 이부분 중요
            conn = ds.getConnection();
        }catch (Exception e ){
            e.printStackTrace();
        }
    }

    public void insertBooking(BookingBean bean){
        getConnection();
        try{
            String sql = "insert into booking values(no,?,?,?,?,?,?,?,?,?,?,now())";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,bean.getImg());
            pstmt.setString(2,bean.getName());
            pstmt.setString(3,bean.getInfo());
            pstmt.setString(4,bean.getPrice());
            pstmt.setString(5,bean.getCheckin());
            pstmt.setString(6,bean.getCheckout());
            pstmt.setInt(7,bean.getAdults());
            pstmt.setInt(8,bean.getKids());
            pstmt.setInt(9,bean.getRooms());
            pstmt.setString(10,bean.getId());
            pstmt.executeUpdate();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public ArrayList<BookingBean> getBooking(String id){

        getConnection();
        ArrayList<BookingBean> beans = new ArrayList<>();
        try{
            String sql = "select * from booking where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            rs = pstmt.executeQuery();
            while (rs.next()){
                BookingBean tbean = new BookingBean();
                tbean.setNo(rs.getInt(1));
                tbean.setImg(rs.getString(2));
                tbean.setName(rs.getString(3));
                tbean.setInfo(rs.getString(4));
                tbean.setPrice(rs.getString(5));
                tbean.setCheckin(rs.getString(6));
                tbean.setCheckout(rs.getString(7));
                tbean.setAdults(rs.getInt(8));
                tbean.setKids(rs.getInt(9));
                tbean.setRooms(rs.getInt(10));
                tbean.setId(rs.getString(11));
                tbean.setReserveDate(rs.getString(12));
                beans.add(tbean);
            }
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return beans;
    }

    public BookingBean getBooking(int no){

        getConnection();
        BookingBean bean = new BookingBean();
        try{
            String sql = "select * from booking where no = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,no);
            rs = pstmt.executeQuery();
            if (rs.next()){

                bean.setNo(rs.getInt(1));
                bean.setImg(rs.getString(2));
                bean.setName(rs.getString(3));
                bean.setInfo(rs.getString(4));
                bean.setPrice(rs.getString(5));
                bean.setCheckin(rs.getString(6));
                bean.setCheckout(rs.getString(7));
                bean.setAdults(rs.getInt(8));
                bean.setKids(rs.getInt(9));
                bean.setRooms(rs.getInt(10));
                bean.setId(rs.getString(11));
                bean.setReserveDate(rs.getString(12));
            }
            System.out.println(bean);
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return bean;
    }
    public void cancelBooking(int no){
        getConnection();
        try{
            String sql = "delete from booking where no = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,no);
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public int bookingCnt(String email){
        getConnection();
        int count = 0;
        try{
            String sql = "select count(*) from booking where no = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs = pstmt.executeQuery();
            if (rs.next()){
                count = rs.getInt(1);
            }
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }
}
