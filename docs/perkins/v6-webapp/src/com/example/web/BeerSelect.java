package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import com.example.model.*;
import java.util.*;

public class BeerSelect extends HttpServlet {

	static {
		System.out.println("servlet loaded..."+Thread.currentThread().getName());
	}
	
	public BeerSelect() {
		System.out.println("constructor loaded..."+Thread.currentThread().getName());
	}
	
	public void init() throws ServletException {
		System.out.println("init loaded..."+Thread.currentThread().getName());
		super.init();
	}
	
	public void service(HttpServletRequest request,
					HttpServletResponse response) 
					throws IOException, ServletException {
		System.out.println("service loaded..."+Thread.currentThread().getName());
		
		super.service(request, response);
	}
	
	public void doPost(HttpServletRequest request,
					HttpServletResponse response) 
					throws IOException, ServletException {
		
		System.out.println("doget loaded..."+Thread.currentThread().getName());
		
		response.setContentType("text/html");
		
		BeerExpert be = new BeerExpert();
		String c = request.getParameter("color");
		List result = be.getBrands(c);
		
		request.setAttribute("styles", result);
		
		RequestDispatcher view = request.getRequestDispatcher("result.jsp");
		
		view.forward(request, response);
		

	}

}