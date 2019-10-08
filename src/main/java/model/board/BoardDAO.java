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
    public void createBoard(BoardBean boardBean){
        getConnection();

        try{
            String sql = "insert into board values(no,?,?,?,now(),?,0,1,1)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,boardBean.getTitle());
            pstmt.setString(2,boardBean.getAuthor());
            pstmt.setString(3,boardBean.getPw());
            pstmt.setString(4,boardBean.getContents());
            pstmt.executeUpdate();
            conn.close();
        }catch (Exception e ){
            e.printStackTrace();
        }
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
