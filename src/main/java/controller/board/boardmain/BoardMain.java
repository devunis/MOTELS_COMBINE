package controller.board.boardmain;

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

@WebServlet("/boardmain")
public class BoardMain extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }
    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BoardDAO bdao = new BoardDAO();
        List<BoardBean> boardBeanList = bdao.showAll();
        req.setAttribute("list", boardBeanList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/board/boardmain.jsp");
        dispatcher.forward(req,resp);
    }
}
