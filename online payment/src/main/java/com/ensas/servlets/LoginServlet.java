package com.ensas.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensas.cryptage.PasswordEncryption;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail=request.getParameter("username");
		String upwd=request.getParameter("password");
		Connection connection=null;
		HttpSession session=request.getSession();
		String hash=PasswordEncryption.doHashing(upwd);
		RequestDispatcher disp=null;
		if(uemail==null || uemail.equals("") ) {
			request.setAttribute("status","invalidEmail");
			disp=request.getRequestDispatcher("login.jsp");
			disp.forward(request, response);
		}
		if(upwd==null || upwd.equals("") ) {
			request.setAttribute("status","invalidPassword");
			disp=request.getRequestDispatcher("login.jsp");
			disp.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 connection = DriverManager.getConnection( "jdbc:mysql://localhost/gestion_abonement?useSSL=false","root","");
			PreparedStatement ps = connection.prepareStatement("select * from  users where uemail=? and upwd=?");
			ps.setString(1, uemail);
			ps.setString(2, hash);
			ResultSet res =ps.executeQuery();
			if(res.next()) {
				session.setAttribute("name", res.getString("uname"));
				session.setAttribute("email", res.getString("uemail"));
				session.setAttribute("phone", res.getString("umobile"));
				session.setAttribute("facture", res.getDouble("montantAbonnement"));
				session.setAttribute("etat", res.getString("isPaye"));
				disp=request.getRequestDispatcher("VueAbonne.jsp");
			}
			else {
				request.setAttribute("status","failed");
				disp=request.getRequestDispatcher("login.jsp");
			}
			disp.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 connection = DriverManager.getConnection( "jdbc:mysql://localhost/gestion_abonement?useSSL=false","root","");
			PreparedStatement ps = connection.prepareStatement("select * from abonement ");
			ResultSet res =ps.executeQuery();
			if(res.next()) {
				session.setAttribute("nomAbonement", res.getString("nom"));
				session.setAttribute("prixAbonement", res.getDouble("price"));
				disp=request.getRequestDispatcher("VueAbonne.jsp");
			}
			
			disp.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
