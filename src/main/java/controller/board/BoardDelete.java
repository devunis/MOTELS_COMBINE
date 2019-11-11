package controller.board;

import model.board.BoardBean;
import model.board.BoardDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board-delete")
public class BoardDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }
    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BoardDAO bdao = new BoardDAO();
        String inputpwd = req.getParameter("pwd");
        if (req.getParameter("type").equals("1")){
            int boardNo = Integer.parseInt(req.getParameter("boardNo").trim());
            if (bdao.checkPwd(boardNo, inputpwd,1)) {
                bdao.deleteBoard(boardNo,1);
                bdao.deleteAllRefReply(boardNo);
                resp.sendRedirect("../index.jsp?");
            } else {
                resp.sendRedirect("Error.jsp");
            }
        }
        else {
            int replyNo = Integer.parseInt(req.getParameter("replyNo").trim());
            if (bdao.checkPwd(replyNo, inputpwd,2)) {
                bdao.deleteBoard(replyNo,2);
                resp.sendRedirect("../index.jsp?");
            } else {
                resp.sendRedirect("Error.jsp");
            }
        }

    }
}
