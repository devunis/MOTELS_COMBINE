package controller.member;
import model.member.MemberDAO;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/member-check")
public class MemberCheck extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String userID = req.getParameter("userID");

        System.out.println("멤버확인");
        try {
            String check = new MemberDAO().memberCheck(userID)+"";
            resp.setContentType("application/json");
            JSONObject json = new JSONObject();
            resp.getWriter().write(json.toString());
        }catch (Exception e){
            e.printStackTrace();
        }


    }
}
