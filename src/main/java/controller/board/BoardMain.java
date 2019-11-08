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

@WebServlet("/board")
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

        final int PAGE_SIZE = 10;
        String pageNum = req.getParameter("pageNum");
        if(pageNum == null)  pageNum = "1";

        int count = 0;
        int number = 0;

        int currentPage = Integer.parseInt(pageNum);
        count = bdao.boardCnt();

        int start = (currentPage-1) * PAGE_SIZE + 1;
        int end = currentPage * PAGE_SIZE;

        //List<BoardBean> boardList = bdao.getAllBoard(start, end);
        number = count - (currentPage-1) * PAGE_SIZE;

        //req.setAttribute("pageSize", PAGE_SIZE);
        //req.setAttribute("count", count);
        //req.setAttribute("currentPage", currentPage);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/board/boardmain.jsp");
        dispatcher.forward(req,resp);


    }
}
