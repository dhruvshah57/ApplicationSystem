package cs520;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddApplication")
public class AddApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public AddApplication() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("AddNewApplicant.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("applicant");
		String applicationreceived =request.getParameter("applicationreceived");
		double gpa;
		if(request.getParameter("gpa").equals(null) || request.getParameter("gpa").equals(""))
			 gpa=0.0;
		else
			gpa =Double.parseDouble(request.getParameter("gpa"));
		String status =request.getParameter("status");
		
		List<Applicant> applications = (List<Applicant>)getServletContext().getAttribute("applications");
		applications.add(new Applicant(name,applicationreceived, gpa, status));
		response.sendRedirect("Display");
		
	}

}
