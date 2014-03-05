package annotations;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(
	description="Book Catalogue Search",
	name="BookCatalogueSearch", 
	asyncSupported=true,
	initParams={@WebInitParam(name="Warehouses",value="All")},
	urlPatterns={"/catalogue/search"}
)
public class CatalogueSearch extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws 
	IOException {
		PrintWriter out = resp.getWriter();
		out.println("hello annotation!");
		
	}
}