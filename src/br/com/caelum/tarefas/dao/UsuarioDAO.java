package br.com.caelum.tarefas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.caelum.tarefas.jdbc.ConnectionFactory;
import br.com.caelum.tarefas.modelo.Usuario;

public class UsuarioDAO {
	
	Connection connection;
	
	public UsuarioDAO(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean existeUsuario(Usuario login){
		
		String sql = "select * from usuarios where login= ?  and senha= ?";
		
		try{
		PreparedStatement stmt = this.connection.prepareStatement(sql);
		
		stmt.setString(1, login.getLogin());
		stmt.setString(2, login.getSenha());
		
		ResultSet rs = stmt.executeQuery();
		
		stmt.execute();
		
		//verifica se existe retorno na consulta
		if(rs.next())
		{
			stmt.close();
			return true;
		}
		else
		{
			stmt.close();
			return false;
		}
		
	}catch(SQLException e){
		throw new RuntimeException(e);
	}
}
}
