package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.enums.Weekday;
import com.user.Course;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Course course = new Course();
		course.setCourseName(request.getParameter("courseName"));
		course.setProfessor(request.getParameter("professor"));
		course.setTime(request.getParameter("time"));
		course.setRoomNumber(request.getParameter("roomNumber"));
		course.setStartDate(request.getParameter("startDate"));
		String[] wdArray = request.getParameterValues("weekday");
		Weekday[] occurrences = new Weekday[wdArray.length];
		for (int i = 0; i < wdArray.length; i++) {
			occurrences[i] = Weekday.valueOf(wdArray[i]);
		}
		course.setOccurrencesArray(occurrences);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
