package com.ensas.entity;






public class abonnement {

	public abonnement() {
		super();
	}
	
	private int id;
	private String nom;
	private double price;
	
	public abonnement(String nom, double price) {
		super();
		this.nom = nom;
		this.price = price;
	}
	public abonnement(int id, String nom, double price) {
		super();
		this.id = id;
		this.nom = nom;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	

}
