package configuration;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseConfiguration {
    protected Connection conn;
    protected PreparedStatement pstmt;
    protected ResultSet rs;

    protected void getConnection() {
        try {
            Context con = new InitialContext();
            Context envCon = (Context) con.lookup("java:comp/env");
            DataSource ds = (DataSource) envCon.lookup("jdbc/mydb");// 이부분 중요
            conn = ds.getConnection();
        }catch (Exception e ){
            e.printStackTrace();
        }
    }
}
