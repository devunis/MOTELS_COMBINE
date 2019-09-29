package model.member;

import configuration.DatabaseConfiguration;

public class MemberDAO extends DatabaseConfiguration {

    public void insertMember(MemberBean mbean){
        getConnection();
        try {
            String sql = "insert into member values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getEmail());
            pstmt.setString(2,mbean.getPwd());
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
            String sql = "update member set pwd=?, name=?, tel=?, location=? where email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getPwd());
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
            String sql = "delete from member where email=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,mbean.getEmail());
            pstmt.executeUpdate();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


}