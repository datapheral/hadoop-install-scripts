package com.datapheral.web;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
public class ServletLifeCycle extends HttpServlet {
 
    /**
	 * 
	 */
	private static final long serialVersionUID = -9215223022021800799L;
	private int count;
 
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        getServletContext().log("init() called");
        count = 0;
    }
 
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().log("service() called");
        count++;
        response.getWriter().write("Incrementing the count: count = " + count);
    }
 
    @Override
    public void destroy() {
        getServletContext().log("destroy() called");
    }
 
}