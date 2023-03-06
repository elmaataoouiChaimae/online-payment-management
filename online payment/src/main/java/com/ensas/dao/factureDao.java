package com.ensas.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ensas.entity.Facture;

public class factureDao {
	private String jdbcURL = "jdbc:mysql://localhost/gestion_abonement";
	private String jdbcUsername = "root";
	private String jdbcPassword = "";
	public factureDao() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection( "jdbc:mysql://localhost/gestion_abonement?useSSL=false","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	public List<Facture> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Facture> users = new ArrayList<Facture>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from factures");) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt(1);
				int idClient = rs.getInt(2);
				String mois = rs.getString(3);
				double montant = rs.getDouble(4);
				String isPaye = rs.getString(5);
				users.add(new Facture(id, idClient, mois, montant,isPaye));
			}
		} catch (SQLException e) {
			
		}
		return users;
	}
	
	
	
}
