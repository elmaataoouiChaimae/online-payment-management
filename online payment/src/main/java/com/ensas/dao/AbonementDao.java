package com.ensas.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ensas.cryptage.PasswordEncryption;
import com.ensas.entity.User;
import com.ensas.entity.abonnement;


public class AbonementDao {

	public AbonementDao() {
		super();
		
	}
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 connection = DriverManager.getConnection( "jdbc:mysql://localhost/gestion_abonement?","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	public List<abonnement> getData() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<abonnement> users = new ArrayList<abonnement>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from abonement");) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id =rs.getInt("id");
				String name = rs.getString("nom");
				double prix= rs.getDouble("price");
				users.add(new abonnement(id,name, prix));
			}
		} catch (SQLException e) {
			
		}
		return users;
	}
	
   
}
