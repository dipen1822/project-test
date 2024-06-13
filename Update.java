package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DaoLogic;
import com.entity.Hobbies;
import com.entity.Student;

@WebServlet("/update")
public class Update extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("uname");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String gender=req.getParameter("gender");
		long mobail=Long.valueOf(req.getParameter("mobail"));
		String dob=req.getParameter("dob");
		String address=req.getParameter("address");
		String[]hobbies=req.getParameterValues("hobbies");
		String job=req.getParameter("job");
		int id = Integer.parseInt(req.getParameter("id"));
		
		
		Student s=new Student();
		s.setUname(name);
		s.setPassword(pass);
		s.setEmail(email);
		s.setGender(gender);
		s.setMobail(mobail);
		s.setDob(Date.valueOf(dob));
		s.setAddress(address);
		s.setJob(job);
		s.setId(id);
		
		List<Hobbies> h = new ArrayList<>();
		for(String hob:hobbies) { 
			Hobbies h1 = new Hobbies();
			h1.setName(hob);
			h.add(h1);
		}
		s.setHobbies(h);
		
		DaoLogic d = new DaoLogic();
		d.update(s);
		resp.sendRedirect("index.jsp");
		
	}

}
