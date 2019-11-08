package controller.board;

import model.board.BoardBean;
import model.board.BoardDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class BoardRegister extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }
    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        BoardDAO bdao = new BoardDAO();
        BoardBean boardBean = new BoardBean();
        boardBean.setTitle(req.getParameter("title"));
        boardBean.setAuthor(req.getParameter("author"));
        boardBean.setPw(req.getParameter("pw"));
        boardBean.setContents(req.getParameter("contents"));
        bdao.createBoard(boardBean);
        resp.sendRedirect("../index.jsp?");


    }
}

