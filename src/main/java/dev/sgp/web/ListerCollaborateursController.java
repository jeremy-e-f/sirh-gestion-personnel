package dev.sgp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// A ajouter
		System.out.println("test");
		
		List<Departement> listeDepartements= Constantes.DPT_SERVICE.listerDepartements();
		req.setAttribute("listeDepartements", listeDepartements);
		
		List<Collaborateur> listeCollaborateurs= Constantes.COLLAB_SERVICE.listerCollaborateurs();
		req.setAttribute("listeCollaborateurs", listeCollaborateurs);

		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
	}
}
