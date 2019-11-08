package model.board;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
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

    // 게시글 작성
    public boolean createBoard(BoardBean boardBean){
        getConnection();
        boolean chk = false;
        try{
            String sql = "insert into board values (no,?,?,?,now(),?,0,1,1)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,boardBean.getTitle());
            pstmt.setString(2,boardBean.getAuthor());
            pstmt.setString(3,boardBean.getPw());
            pstmt.setString(4,boardBean.getContents());
            pstmt.executeUpdate();
            System.out.println(boardBean);
            conn.close();
            chk = true;
        }catch (Exception e ){
            e.printStackTrace();
        }
        return chk;
    }

    //게시글 열람
    public List<BoardBean> readBoard(int no) {
        getConnection();
        List<BoardBean> list = null;
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // 게시글 개수 리턴
    public int boardCnt() {
        getConnection();
        int cnt = 0;
        try{
            String sql = "select count(*) from board";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if(rs.next()){
                cnt = rs.getInt(1);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return cnt;
    }


    //게시글 전체 조회(최신글순)
    public List<BoardBean> showAll() {
        List<BoardBean> boardBeanList = new ArrayList<>();
        getConnection();

        try {
            String sql = "select * from board order by no desc";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                BoardBean boardBean = new BoardBean();
                boardBean.setNo(rs.getInt(1));
                boardBean.setTitle(rs.getString(2));
                boardBean.setAuthor(rs.getString(3));
                boardBean.setPw(rs.getString(4));
                boardBean.setDate(rs.getString(5));
                boardBean.setContents(rs.getString(6));
                boardBean.setReadcnt(rs.getInt(7));
                boardBean.setRef_step(rs.getInt(8));
                boardBean.setRef_step(rs.getInt(9));
                boardBeanList.add(boardBean);
            }
            conn.close();
        } catch (Exception e ){
            e.printStackTrace();
        }

        return boardBeanList;
    }
}
