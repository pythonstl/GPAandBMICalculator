package com.servlet;

import java.io.IOException;
import java.text.NumberFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Student;

/**
 * Servlet implementation class BmiServlet
 */
@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BmiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String heightStr = request.getParameter("height");
		String weightStr = request.getParameter("weight");
		
		// Calculate B.M.I..
		// BMI = (weight (lbs.)/ height (in.) ^ 2) * 703
		double height = Double.parseDouble(heightStr);
		double weight = Double.parseDouble(weightStr);
		double bmi = (weight/Math.pow(height, 2d)) * 703;
		
		// Get the student object from the session and update the B.M.I.
		HttpSession session = request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		NumberFormat nf = NumberFormat.getInstance();
		nf.setMaximumFractionDigits(2);
		bmi = Double.parseDouble(nf.format(bmi));
		student.setBmi(bmi);
		
		// Add the updated student value to the session object.
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
