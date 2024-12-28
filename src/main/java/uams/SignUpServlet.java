package uams;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/signin")
public class SignUpServlet extends HttpServlet{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String un = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/uams", "root", "root");
			PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?)");
            ps.setInt(1, id);
			ps.setString(2, un);
			ps.setString(3, email);
			ps.setString(4, password);
		
			
		 int row = ps.executeUpdate();
		 PrintWriter pw=res.getWriter();
		 pw.write("<h1>sucessfully registered..Please do Login into ur Account</h1>");
		 RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
		 rd.include(req, res);
			ps.close();
			con.close();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
