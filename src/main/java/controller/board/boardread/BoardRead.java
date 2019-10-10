package controller.board.boardread;

import model.board.BoardDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardRead extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req,resp);
    }

    protected void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BoardDAO bdao = new BoardDAO();

    }
}
