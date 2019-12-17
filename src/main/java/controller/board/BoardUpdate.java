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

@WebServlet("/board-update")
public class BoardUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        BoardDAO bdao = new BoardDAO();
        String content = req.getParameter("content");
        String pwd = req.getParameter("pwd");
        if (req.getParameter("type").equals("1")){
            int boardNo = Integer.parseInt(req.getParameter("boardNo"));
            if(bdao.checkPwd(boardNo, pwd,1)){
                //bdao.updateBoard(boardNo, content,1);
                //resp.sendRedirect("index.jsp?main=/board/boardmain.jsp");
                bdao.updateBoard(boardNo, content, 1);
                String no = req.getParameter("boardNo");
                req.setAttribute("no", no);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/read");
                dispatcher.forward(req,resp);
            }
            else{
                resp.sendRedirect("Error.jsp");
            }
        }
        else {
            int replyNo = Integer.parseInt(req.getParameter("replyNo"));
            String no = req.getParameter("no");
            if (bdao.checkPwd(replyNo, pwd,2)) {
                bdao.updateBoard(replyNo,content,2);

                req.setAttribute("no", no);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/read");
                dispatcher.forward(req,resp);

                //bdao.updateBoard(replyNo, content,2);
                //resp.sendRedirect("index.jsp?main=/board/boardmain.jsp");
            } else {
                resp.sendRedirect("Error.jsp");
            }
        }
    }
}
