package cs520;


import java.io.IOException;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/Display", loadOnStartup = 1)
public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;
   //This is Testing, done by Dhruv.    
    public Display() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		List<Applicant> applications = new ArrayList<Applicant>();
		applications.add( new Applicant("Dhruv","01/10/2016",3.5, "accepted"));
		getServletContext().setAttribute("applications", applications);
		
	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("Display.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	          
		
		doGet(request, response);
	}
	

}
