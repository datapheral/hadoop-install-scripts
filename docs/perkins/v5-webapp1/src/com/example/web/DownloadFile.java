package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class DownloadFile extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("application/jar");
		ServletContext ctx = getServletContext();
		InputStream is = ctx.getResourceAsStream("/bookCode.jar");
		
		int read = 0;
		byte[] bytes = new byte[1024];
		
		OutputStream os = response.getOutputStream();
		while ((read = is.read(bytes)) != -1) {
			os.write(bytes,0,read);
		}
		os.flush();
		os.close();
		
	}
	
}

