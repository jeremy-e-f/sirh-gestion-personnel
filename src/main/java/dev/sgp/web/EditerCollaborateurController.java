package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String matricule = req.getParameter("matricule");
		if(matricule== null){
			
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 400 */
			resp.setStatus(400);
			/** Code HTML ecrit dans le corps de la reponse */
			resp.getWriter().write("Un matricule est attendu");
		}else{
			
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 400 */
			resp.setStatus(400);
			/** Code HTML ecrit dans le corps de la reponse */
			String texte= "<h1>Edition de collaborateur</h1>Matricule : "+matricule;
			resp.getWriter().write(texte);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		
		String parametresManquants= "";
		if(matricule== null){
			parametresManquants+="matricule";
		}
		if(titre== null){
			parametresManquants+=" titre";
		}
		if(nom== null){
			parametresManquants+=" nom";
		}
		if(prenom== null){
			parametresManquants+=" prenom";
		}
		
		if(parametresManquants!= ""){
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 400 */
			resp.setStatus(400);
			/** Code HTML ecrit dans le corps de la reponse */
			resp.getWriter().write("Les paramètres suivants sont incorrects :"+parametresManquants);
		}else{
			/** Content */
			resp.setContentType("text/html");
			/** Code d'erreur 201 */
			resp.setStatus(201);
			/** Code HTML ecrit dans le corps de la reponse */
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes :<br>"+
					"matricule="+matricule+",titre="+titre+",nom="+nom+",prenom="+prenom);
		}
	}
}
