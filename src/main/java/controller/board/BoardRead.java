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
import java.util.ArrayList;

@WebServlet("/read")
public class BoardRead extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int boardNo = 0;

        if(req.getParameter(("no")) != null) {
            boardNo = Integer.parseInt(req.getParameter("no"));
        } else {
            String s_no = (String) req.getAttribute("no");
            boardNo = Integer.parseInt(s_no);
        }



        //게시글
        BoardDAO bdao = new BoardDAO();
        BoardBean bean = bdao.getContents(boardNo);
        req.setAttribute("bean", bean);

        //해당 게시글 댓글 뿌려주기
        ArrayList<BoardBean> reply = bdao.getReply(boardNo);
        req.setAttribute("reply", reply);


        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/board/readboard.jsp");
        dispatcher.forward(req,resp);

    }
}
