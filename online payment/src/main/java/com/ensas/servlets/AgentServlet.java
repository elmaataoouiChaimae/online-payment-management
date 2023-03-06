package com.ensas.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ensas.dao.UserDao;
import com.ensas.entity.User;


/**
 * Servlet implementation class AgentServlet
 */
@WebServlet("/agent")
public class AgentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao user;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		 user= new UserDao();
	}
    public AgentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("agent.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> listUser = user.getData();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("agent.jsp");
		dispatcher.forward(request, response);
	}

}
