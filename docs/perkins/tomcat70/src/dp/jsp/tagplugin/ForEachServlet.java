package dp.jsp.tagplugin;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class ForEachServlet extends HttpServlet  {

	public void doGet(HttpServletRequest request, HttpServletResponse response ) 
		throws IOException, ServletException {
		String title = request.getParameter("title");
		String[] movies = {"Non-stop", "Taken", "Salt", title};
		request.setAttribute("movies",movies);
		
		List nestedMovies = new ArrayList();
		nestedMovies.add(movies);
		String[] movies2 = {"Superman", "Batman", "Heman", "Spiderman"};
		nestedMovies.add(movies2);
		request.setAttribute("nestedMovies",nestedMovies);
		
		Map<String,String> numberMap = new HashMap<String,String>();
		numberMap.put("one","uno");
		numberMap.put("two","dos");
		request.setAttribute("numberMapVar",numberMap);
		
		
		RequestDispatcher view = request.getRequestDispatcher("/jsp/tagplugin/foreach.jsp");		
		view.forward(request, response);
	}
	

}