package com.ensas.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensas.dao.UserDao;
import com.ensas.entity.User;

/**
 * Servlet implementation class AdminServlets
 */
@WebServlet("/admin")
public class AdminServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	UserDao user;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		 user= new UserDao();
	}
    public AdminServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail=request.getParameter("username");
		String upwd=request.getParameter("password");
		Connection connection=null;
		HttpSession session=request.getSession();
		RequestDispatcher disp=null;
		if(uemail==null || uemail.equals("") ) {
			request.setAttribute("status","invalidEmail");
			disp=request.getRequestDispatcher("admin.jsp");
			disp.forward(request, response);
		}
		if(upwd==null || upwd.equals("") ) {
			request.setAttribute("status","invalidPassword");
			disp=request.getRequestDispatcher("admin.jsp");
			disp.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 connection = DriverManager.getConnection( "jdbc:mysql://localhost/gestion_abonement?useSSL=false","root","");
			PreparedStatement ps = connection.prepareStatement("select * from  admin where uemail=? and upwd=?");
			ps.setString(1, uemail);
			ps.setString(2, upwd);
			ResultSet res =ps.executeQuery();
			if(res.next()) {
				
				List<User> listUser = user.getData();
				request.setAttribute("listUser", listUser);
				disp=request.getRequestDispatcher("VueAgent.jsp");
			}
			else {
				request.setAttribute("status","failed");
				disp=request.getRequestDispatcher("admin.jsp");
			}
			disp.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
