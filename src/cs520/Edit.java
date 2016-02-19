package cs520;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Broken file has been fixed

@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Edit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ID");
		List<Applicant> applications = (List<Applicant>)getServletContext().getAttribute("applications");
		request.setAttribute("applications", applications);
		
		request.setAttribute("ID", id);
		request.getRequestDispatcher("Edit.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("applicant");
		String applicationreceived =request.getParameter("applicationreceived");
		double gpa =Double.parseDouble(request.getParameter("gpa"));
		String status =request.getParameter("status");
		String id = request.getParameter("id");
		List<Applicant> applications = (List<Applicant>)getServletContext().getAttribute("applications");
		for(Applicant a : applications)
		{
			if(a.getName().equals(id))
			{
					a.setDate(applicationreceived);
					a.setGpa(gpa);
					a.setStatus(status);
					a.setName(name);
			}
		}
		
			
		response.sendRedirect("Display");
	}

}
