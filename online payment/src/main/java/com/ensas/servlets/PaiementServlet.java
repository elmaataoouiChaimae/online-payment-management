package com.ensas.servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaiementServlet
 */
@WebServlet("/payer")
public class PaiementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaiementServlet() {
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

		
		
		String card_number=request.getParameter("cardNumber");
		String date_end_str=request.getParameter("date_end");
		String tree_end=request.getParameter("tree");
		DateTimeFormatter f = DateTimeFormatter.ofPattern( "uuuu-MM-dd" ) ;
		LocalDate date_end = LocalDate.parse( date_end_str , f ) ;
		
		RequestDispatcher disp=null;
		if(card_number==null || card_number.length()!=16 ) {
			request.setAttribute("status","invalidcardNumber");
			disp=request.getRequestDispatcher("VueAbonne.jsp");
			disp.forward(request, response);
		}
		else if(!date_end.isAfter(LocalDate.now()) ) {
			request.setAttribute("status","invalidAnnee");
			disp=request.getRequestDispatcher("VueAbonne.jsp");
			disp.forward(request, response);
		}
		else {
			
			disp=request.getRequestDispatcher("Success.jsp");
			disp.forward(request, response);
		}
		
		
		
	}

}
