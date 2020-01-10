package dev.sgp.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.util.Constantes;

public class CreerCollaborateursController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String adresse = req.getParameter("adresse");
		String dateNaissance = req.getParameter("date_naiss");
		String numSS = req.getParameter("numss");
		
		String parametresManquants= "";
		if(numSS== null || numSS.trim().equals("")){
			parametresManquants+="Numéro de sécurité sociale";
		}
		if(dateNaissance== null || dateNaissance.trim().equals("")){
			parametresManquants+=" Date de naissance";
		}
		if(nom== null || nom.trim().equals("")){
			parametresManquants+=" Nom";
		}
		if(prenom== null || prenom.trim().equals("")){
			parametresManquants+=" Prénom";
		}
		if(adresse== null || adresse.trim().equals("")){
			parametresManquants+=" Adresse";
		}
		
		Date dateNaiss= null;
		try {
			dateNaiss = new SimpleDateFormat("yyyy-MM-dd").parse(dateNaissance);
		} catch (ParseException e) {
			parametresManquants+=" Date de naissance : mauvais format ("+dateNaissance+")";
		}
		
		if(!"".equals(parametresManquants)){
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 400 */
			resp.setStatus(400);
			/** Code HTML ecrit dans le corps de la reponse */
			resp.getWriter().write("Les paramètres suivants sont incorrects :"+parametresManquants);
		}else{
			
			LocalDate dateN= dateNaiss.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 201 */
			resp.setStatus(201);
			String emailPro= prenom+"."+nom+"@societe.com";
			Collaborateur nouveau= new Collaborateur(UUID.randomUUID().toString(), nom, prenom, dateN, adresse, numSS, emailPro, null, ZonedDateTime.now(), true);
			/** Code HTML ecrit dans le corps de la reponse */
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes :<br>"+nouveau);
			
			Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(nouveau);

			//req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
			resp.sendRedirect("/sgp/collaborateurs/lister");
		}
		
		
	}
}
