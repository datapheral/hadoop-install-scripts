package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import com.example.model.*;
import java.util.*;

public class BeerSelect extends HttpServlet {

	public void doPost(HttpServletRequest request,
					HttpServletResponse response) 
					throws IOException, ServletException {
		response.setContentType("text/html");
		
		BeerExpert be = new BeerExpert();
		String c = request.getParameter("color");
		List result = be.getBrands(c);
		PrintWriter out = response.getWriter();
		out.println("<html>" +
				"<body>" +
				"Beer Selection Advice<br>");
		Iterator it = result.iterator();
		while(it.hasNext()) {
			out.print("<br>try: "+it.next());
		}
		
		
	}

}