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


public class UserDao {

	public UserDao() {
		super();
		
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
	public int  insertUser(User user) throws SQLException {
		int  rowCount = 0;
		// try-with-resource statement will auto close the connection.
		try {
			    Connection connection = getConnection();
				PreparedStatement ps = connection.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
				ps.setString(1, user.getUname());
				ps.setString(2,user.getUpwd());
				ps.setString(3, user.getUemail());
				ps.setString(4, user.getUmobile());
				 rowCount=ps.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowCount;
		
	}
	public List<User> getData() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<User>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from users");) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				double montant= rs.getDouble(6);
				String pay = rs.getString(7);
				users.add(new User(id,name, email,phone,montant,pay));
			}
		} catch (SQLException e) {
			
		}
		return users;
	}
	
}
