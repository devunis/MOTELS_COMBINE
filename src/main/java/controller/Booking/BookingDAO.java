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

    public void insertBooking(BookingBean bbean){
        getConnection();
        try{

            String sql = "insert into booking values(no,?,?,?,?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,bbean.getMotel());
            pstmt.setString(2,bbean.getLoc());
            pstmt.setString(3,bbean.getName());
            pstmt.setString(4,bbean.getCheckin());
            pstmt.setString(5,bbean.getCheckout());
            pstmt.setString(6,bbean.getPrice());
            pstmt.setInt(7,bbean.getAdults());
            pstmt.setInt(8,bbean.getKids());
            pstmt.setInt(9,bbean.getRooms());
            pstmt.setString(10,bbean.getEmail());
            pstmt.executeUpdate();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public ArrayList<BookingBean> getBooking(String email){
        getConnection();
        ArrayList<BookingBean> bbeans = new ArrayList<>();
        try{

            String sql = "select * from booking where email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs = pstmt.executeQuery();
            while (rs.next()){
                BookingBean tbean = new BookingBean();
                tbean.setMotel(rs.getString(2));
                tbean.setLoc(rs.getString(3));
                tbean.setName(rs.getString(4));
                tbean.setCheckin(rs.getString(5));
                tbean.setCheckout(rs.getString(6));
                tbean.setPrice(rs.getString(7));
                tbean.setAdults(rs.getInt(8));
                tbean.setKids(rs.getInt(9));
                tbean.setRooms(rs.getInt(10));
                tbean.setEmail(rs.getString(11));
                bbeans.add(tbean);
            }
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return bbeans;
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
        }catch (Exception e){
            e.printStackTrace();
        }
        return count;
    }
}
