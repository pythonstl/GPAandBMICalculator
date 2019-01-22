package com.user;

import java.util.ArrayList;

import com.enums.Weekday;

public class Course {
	private String courseName, professor, time, roomNumber, startDate;
	//private ArrayList<Weekday> occurrences;
	private Weekday[] occurrencesArray;
	
	public Course() {}	
	public Course(String courseName, String professor, String time, String roomNumber, String startDate,
			Weekday[] occurrencesArray) {
		this.courseName = courseName;
		this.professor = professor;
		this.time = time;
		this.roomNumber = roomNumber;
		this.startDate = startDate;
		this.occurrencesArray = occurrencesArray;
	}
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public Weekday[] getOccurrencesArray() {
		return occurrencesArray;
	}
	public void setOccurrencesArray(Weekday[] occurrencesArray) {
		this.occurrencesArray = occurrencesArray;
	}
}
