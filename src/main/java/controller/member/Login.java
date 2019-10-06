package controller.member;

import model.member.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;



@WebServlet("/login.do")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("euc-kr");


        MemberDAO mdao = new MemberDAO();
        String email = req.getParameter("email");
        String pw = req.getParameter("pw");
        if (mdao.hasMember(email, pw)) {
            HttpSession session = req.getSession();
            session.setMaxInactiveInterval(60*30);

            String name = mdao.getMemberName(email);
            System.out.println("name : " + name);

            session.setAttribute("email", email);

            session.setAttribute("name", name);
            RequestDispatcher dispatcher = req.getRequestDispatcher("header.jsp");
            dispatcher.forward(req,resp);
        } else {
            resp.sendRedirect("Error.jsp");
        }
    }
}
