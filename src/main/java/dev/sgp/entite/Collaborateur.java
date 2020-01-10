package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;

/**
 * Représente le concept de collaborateur
 * @author DIGINAMIC
 *
 */
public class Collaborateur {
	
	private String matricule; 				/** Matricule */
	
	private String nom; 					/** Nom */
	
	private String prenom; 					/** Prenom */
	
	private LocalDate DateDeNaissance; 		/** Date de naissance */
	
	private String adresse; 				/** Adresse */
	
	private String numeroDeSecuriteSociale; /** Numéro de sécurité de sociale */
	
	private String emailPro; 				/** Email professionnel */
	
	private String photo; 					/** Photo */
	
	private ZonedDateTime dateHeureCreation; /** Date de la création  */
	
	private Boolean actif; 					/** Actif */
	
	private String intitulePoste;			/** Intitulé du poste */
	
	private Departement departement;		/** Département */

	/**
	 * Constructeurs
	 */
	public Collaborateur() {
	}

	public Collaborateur(String matricule, String nom, String prenom, LocalDate dateDeNaissance, String adresse,
			String numeroDeSecuriteSociale, String emailPro, String photo, ZonedDateTime dateHeureCreation,
			Boolean actif) {
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		DateDeNaissance = dateDeNaissance;
		this.adresse = adresse;
		this.numeroDeSecuriteSociale = numeroDeSecuriteSociale;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
	}
	
	public Collaborateur(String matricule, String nom, String prenom, LocalDate dateDeNaissance, String adresse,
			String numeroDeSecuriteSociale, String emailPro, String photo, ZonedDateTime dateHeureCreation,
			Boolean actif, String intitulePoste, Departement departement) {
		this(matricule, nom, prenom, dateDeNaissance, adresse, numeroDeSecuriteSociale, emailPro, photo, dateHeureCreation, actif);
		this.intitulePoste = intitulePoste;
		this.departement = departement;
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public LocalDate getDateDeNaissance() {
		return DateDeNaissance;
	}

	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		DateDeNaissance = dateDeNaissance;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getNumeroDeSecuriteSociale() {
		return numeroDeSecuriteSociale;
	}

	public void setNumeroDeSecuriteSociale(String numeroDeSecuriteSociale) {
		this.numeroDeSecuriteSociale = numeroDeSecuriteSociale;
	}

	public String getEmailPro() {
		return emailPro;
	}

	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}

	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}

	public Boolean getActif() {
		return actif;
	}

	public void setActif(Boolean actif) {
		this.actif = actif;
	}

	/**
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/**
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/**
	 * @return the departement
	 */
	public Departement getDepartement() {
		return departement;
	}

	/**
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Collaborateur [matricule=" + matricule + ", nom=" + nom + ", prenom=" + prenom + ", DateDeNaissance="
				+ DateDeNaissance + ", adresse=" + adresse + ", numeroDeSecuriteSociale=" + numeroDeSecuriteSociale
				+ ", emailPro=" + emailPro + ", photo=" + photo + ", dateHeureCreation=" + dateHeureCreation
				+ ", actif=" + actif + ", intitulePoste=" + intitulePoste + ", departement=" + departement + "]";
	}

	
}
