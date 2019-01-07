package topaidi.app.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import topaidi.app.dao.impl.IdeaDaoImpl;
import topaidi.app.model.ideas.Idea;

/**
 * Servlet implementation class IdeaController
 */
@WebServlet("/IdeaController")
public class IdeaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private IdeaDaoImpl ideaDao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdeaController() {
        super();
        ideaDao = new IdeaDaoImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "list";
		}
		
		
		switch (action) {
		case "list" :
			List<Idea> ideas = ideaDao.findAll();
			request.setAttribute("ideaList", ideas);
			request.getRequestDispatcher("pages/idea/list.jsp").forward(request, response);					
			break;
		case "create":
			request.getRequestDispatcher("pages/idea/create.jsp").forward(request, response);			
			break;
		default:
			break;
		}
	
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String image = request.getParameter("img");
			
			Idea idea;
			if (image.equals("")) {
				idea = new Idea(null,title,description,null,null);
				
			} else {
				idea = new Idea(null,title,description,image,null);
			}
			
			ideaDao.insert(idea);
			
			response.sendRedirect("IdeaController?action=list");	
	}

}
