package dev.sgp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import dev.sgp.entite.Departement;

public class DepartementService {
	List<Departement> listeDepartements;
	
	public DepartementService(){
		listeDepartements = new ArrayList<Departement>();
		listeDepartements.add(new Departement(1,"Compatbilite"));
		listeDepartements.add(new Departement(2,"Ressources Humaines"));
		listeDepartements.add(new Departement(3,"Informatique"));
		listeDepartements.add(new Departement(4,"Administratif"));
	}

	public List<Departement> listerDepartements() {
		return listeDepartements;
	}

	public void sauvegarderDepartement(Departement collab) {
		listeDepartements.add(collab);
	}
}
