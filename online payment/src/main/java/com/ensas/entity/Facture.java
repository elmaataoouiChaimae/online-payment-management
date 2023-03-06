package com.ensas.entity;

public class Facture {
    int id_client,id_facture;
    String mois,isPaye;
    double montant;
	public Facture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Facture(int id_client, int id_facture, String mois, double montant2, String isPaye) {
		super();
		this.id_client = id_client;
		this.id_facture = id_facture;
		this.mois = mois;
		this.montant = montant2;
		this.isPaye = isPaye;
	}
	
	public int getId_client() {
		return id_client;
	}
	public void setId_client(int id_client) {
		this.id_client = id_client;
	}
	public int getId_facture() {
		return id_facture;
	}
	public void setId_facture(int id_facture) {
		this.id_facture = id_facture;
	}
	public String getMois() {
		return mois;
	}
	public void setMois(String mois) {
		this.mois = mois;
	}
	public double getMontant() {
		return montant;
	}
	public void setMontant(double montant) {
		this.montant = montant;
	}
	public String getIsPaye() {
		return isPaye;
	}
	public void setIsPaye(String isPaye) {
		this.isPaye = isPaye;
	}
	
    
}
