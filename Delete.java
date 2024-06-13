package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DaoLogic;
import com.entity.Student;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		DaoLogic dao = new DaoLogic();
		Student s = dao.getstudent(id);
		if(s!=null) {
			dao.delete(s);
		}
		resp.sendRedirect("index.jsp");
		
		
		
	}

}
