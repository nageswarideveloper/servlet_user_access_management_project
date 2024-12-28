package uams;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String email= req.getParameter("email");
		String password = req.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uams","root","root");
			PreparedStatement ps=con.prepareStatement("select * from user where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			req.setAttribute("rs", rs);
			
			
				if(rs.next()) {
					PrintWriter pw=res.getWriter();
					pw.write("<html><body><h1>Login Done Sucessfully</h1</body></html>");
					RequestDispatcher rd = req.getRequestDispatcher("logindetails.jsp");
					rd.include(req, res);
				    }
				 else
				 {
					PrintWriter pw=res.getWriter();
					pw.write("<html><body><h1>Invalid Credentials</h1</body></html>");
					RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
					rd.include(req, res);
				
				 }
		
			rs.close();
			ps.close();
			con.close();
			
		} 
			catch (ClassNotFoundException | SQLException e) {
	
			e.printStackTrace();
		}
		
	}
	}
