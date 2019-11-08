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

@WebServlet("/board/read")
public class BoardRead extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int boardNo = Integer.parseInt(req.getParameter("no"));
        BoardDAO bdao = new BoardDAO();
        BoardBean bean = bdao.getContents(boardNo);
        req.setAttribute("bean", bean);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp?main=/board/read.jsp");
        dispatcher.forward(req,resp);
    }
}
