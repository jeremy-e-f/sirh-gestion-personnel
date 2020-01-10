package dev.sgp.entite;

/**
 * Représente le concept de département
 * @author DIGINAMIC
 *
 */
public class Departement {

	private int id; 	/** Id du département*/
	
	private String nom; /** Nom du département */
	
	/**
	 * Contructeur
	 * @param id
	 * @param nom
	 */
	public Departement(int id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}

	public Departement() {
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Departement [id=" + id + ", nom=" + nom + "]";
	}
}
