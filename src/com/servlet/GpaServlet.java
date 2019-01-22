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
 * Servlet implementation class GpaServlet
 */
@WebServlet("/GpaServlet")
public class GpaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GpaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String grade1 = request.getParameter("gradeOne");
		String grade2 = request.getParameter("gradeTwo");
		String grade3 = request.getParameter("gradeThree");
		
		// Calculate G.P.A.
		// Semester hours == 12, so creditHours set to 4 for each course.
		// Given cumulative hours == 45, so 45-12 = 33. 33 times 4 (assuming 4.0) = 132
		int oldCumPts = 132;
		// Given cumulative hours == 45, so 45-12 = 33. 33 times 4 (assuming 4.0) = 132
		int cumulativeHours = 45;
		double gpa = (oldCumPts + (Double.parseDouble(grade1)*4) + (Double.parseDouble(grade2)*4) + (Double.parseDouble(grade3)*4))/cumulativeHours;
		NumberFormat nf = NumberFormat.getInstance();
		nf.setMaximumFractionDigits(2);
		gpa = Double.parseDouble(nf.format(gpa));
		
		// Get the student object from the session and update the G.P.A.
		HttpSession session = request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		student.setGpa(gpa);
		
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
