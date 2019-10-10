package controller.member.mypage;

import model.member.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member-delete")
public class MemberDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        String email = (String)session.getAttribute("email");
        String pw = req.getParameter("pw");

        System.out.println("email : " + email);

        MemberDAO mdao = new MemberDAO();

        if (mdao.hasMember(email,pw)){
            mdao.deleteMember(email);
            session.setAttribute("email", null);
            session.setAttribute("name", null);
            session.setMaxInactiveInterval(0);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/mypage/deletesuccess.jsp");
            dispatcher.forward(req,resp);
        }
        else {
            resp.sendRedirect("Error.jsp");
        }





    }
}
