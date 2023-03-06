package com.ensas.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ensas.cryptage.PasswordEncryption;
import com.ensas.dao.AbonementDao;
import com.ensas.dao.UserDao;
import com.ensas.entity.User;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
   private UserDao userDAO;
	
	public void init() {
		userDAO = new UserDao();
	}   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AbonementDao cab=new AbonementDao();
		request.setAttribute("list_abn", cab.getData());
		this.getServletContext().getRequestDispatcher("Signup.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("pass");
		String umobile=request.getParameter("contact");
		String ure_pwd=request.getParameter("re_pass");
		String hash=PasswordEncryption.doHashing(upwd);


		RequestDispatcher disp=null;
		
		Connection connection=null;
		if(uname==null || uname.equals("") ) {
			request.setAttribute("status","invalidName");
			disp=request.getRequestDispatcher("Signup.jsp");
			disp.forward(request, response);
		}
		if(uemail==null || uemail.equals("") ) {
			request.setAttribute("status","invalidEmail");
			disp=request.getRequestDispatcher("Signup.jsp");
			disp.forward(request, response);
		}
		if(upwd==null || upwd.equals("") ) {
			request.setAttribute("status","invalidPassword");
			disp=request.getRequestDispatcher("Signup.jsp");
			disp.forward(request, response);
		}
		if(umobile==null || umobile.equals("") ) {
			request.setAttribute("status","invalidMobile");
			disp=request.getRequestDispatcher("Signup.jsp");
			disp.forward(request, response);
		}
		try {
			User newUser = new User(uname,hash,uemail,umobile);
			disp=request.getRequestDispatcher("Signup.jsp");
			if(userDAO.insertUser(newUser)>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status","failed");
			}
			disp.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
