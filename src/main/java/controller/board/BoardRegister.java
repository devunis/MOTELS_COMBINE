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
import java.io.PrintWriter;

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
        if(req.getParameter("type").equals("1")){
            boardBean.setTitle(req.getParameter("title"));
            boardBean.setAuthor(req.getParameter("author"));
            boardBean.setPw(req.getParameter("pw"));
            boardBean.setContents(req.getParameter("contents"));
            bdao.createBoard(boardBean);
            resp.sendRedirect("index.jsp?main=/board/boardmain.jsp");
        } else {
            boardBean.setTitle(req.getParameter("title"));
            boardBean.setRef(Integer.parseInt(req.getParameter("ref")));
            boardBean.setAuthor(req.getParameter("author"));
            boardBean.setContents(req.getParameter("contents"));
            boardBean.setPw(req.getParameter("pw"));
            bdao.insertReply(boardBean);
            //PrintWriter out = resp.getWriter();
            resp.sendRedirect("index.jsp?main=/board/boardmain.jsp");
            //out.println("<script>history.go(-1)</script>");
        }



    }
}

