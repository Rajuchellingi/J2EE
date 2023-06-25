package user_project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout")
public class logout extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	RequestDispatcher dp=req.getRequestDispatcher("login.jsp");
	HttpSession ses=req.getSession();
	ses.invalidate();
	PrintWriter wt=resp.getWriter();
	wt.write("<html><body><h> you have logout </h1></body></html>");
	dp.include(req, resp);
	
	
}
}
