
package br.com.caelum.tarefas.jdbc;

import java.sql.*;
public class ConnectionFactory {
	
	public Connection getConnection() throws ClassNotFoundException {
		 try {
			 
			Class.forName("com.mysql.jdbc.Driver");
			 return DriverManager.getConnection(
					 "jdbc:mysql://localhost:3306/banco", "root", "");
		 } catch (SQLException e) {
			 throw new RuntimeException(e);
		 }
	}
}