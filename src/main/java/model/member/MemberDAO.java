package model.member;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class MemberDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private  ResultSet rs;

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
    public void insertMember(MemberBean mbean){

        try {
            String sql = "insert into motel.member values(no,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, mbean.getEmail());
            pstmt.setString(2,mbean.getPw());
            pstmt.setString(3,mbean.getName());
            pstmt.setString(4,mbean.getTel());
            pstmt.setInt(5,mbean.getLocation());
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void updateMember(MemberBean mbean) {
        getConnection();
        try{
            String sql = "update motel.member set pwd=?, name=?, tel=?, location=? where email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getPw());
            pstmt.setString(2,mbean.getName());
            pstmt.setString(3,mbean.getTel());
            pstmt.setInt(4,mbean.getLocation());
            pstmt.setString(5,mbean.getEmail());
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void deleteMember(MemberBean mbean){
        getConnection();
        try{
            String sql = "delete from motel.member where email=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getEmail());
            pstmt.executeUpdate();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}