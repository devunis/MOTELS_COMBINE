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
import java.util.List;

@WebServlet("/board-search")
public class BoardSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        BoardDAO bdao = new BoardDAO();
        System.out.println(req.getParameter("keyword"));
        List<BoardBean> boardBeanList = bdao.searchBoard(req.getParameter("keyword"));
        req.setAttribute("list", boardBeanList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/board/boardSearch.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

