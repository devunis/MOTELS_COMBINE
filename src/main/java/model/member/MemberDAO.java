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

    // 회원 가입!
    public void insertMember(MemberBean mbean){
        getConnection();
        try {
            String sql = "insert into member values (no,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getEmail());
            pstmt.setString(2,mbean.getPw());
            pstmt.setString(3,mbean.getName());
            pstmt.setString(4,mbean.getTel());
            pstmt.setString(5,mbean.getLocation());
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    // 회원 조회
    public boolean hasMember(String userEmail, String userPw) {
        getConnection();
        boolean hasMember = false;
        try {
            String sql = "select email, pw from member where email=? and pw=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userEmail);
            pstmt.setString(2,userPw);
            rs = pstmt.executeQuery();
            if(rs.next()){
                hasMember = true;
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hasMember;
    }

    // 로그인시 이메일을 통해 회원이름 출력(세션)
    public String getMemberName(String email){
        getConnection();
        String name = null;
        try{
            String sql = "select name from member where email=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs = pstmt.executeQuery();
            if(rs.next())
                name = rs.getString(1);
            conn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return name;
    }

    //회원 탈퇴
    public void deleteMember(String email){
        getConnection();
        try{
            String sql = "delete from member where email=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    //회언 수정
    public void updateMember(MemberBean mbean){
        getConnection();
        try{
            String sql = "update member set name=?, pw=?, tel=?, location=? where email=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getName());
            pstmt.setString(2,mbean.getPw());
            pstmt.setString(3,mbean.getTel());
            pstmt.setString(4,mbean.getLocation());
            pstmt.setString(5,mbean.getEmail());
            pstmt.executeUpdate();
            conn.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //마이페이지 정보를 얻기 위한
    public String getMemberLoc(String email){
        getConnection();
        String location = null;
        try {
            String sql = "select location from member where email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs = pstmt.executeQuery();
            if(rs.next()){
                location = rs.getString(1);
            }
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return location;
    }

    public String getMemberTel(String email){
        getConnection();
        String tel = null;
        try {
            String sql = "select tel from member where email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,email);
            rs = pstmt.executeQuery();
            if(rs.next()){
                tel = rs.getString(1);
            }
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return tel;
    }





}