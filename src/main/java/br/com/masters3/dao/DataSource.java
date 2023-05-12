package br.com.masters3.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
	
	private Connection connection;
	
	
	public Connection getConnection() {
		return this.connection;
	}
	
	
	public DataSource() {
		try {
			Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
               "jdbc:postgresql://localhost:5432/gulliver","postgres", "stayfoolish");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (connection != null) {
            System.out.println("Parabéns Kah, conectou o banco! Menos um problema pra você gata!");
        } else {
            System.out.println("Falha na conexão!");
       }

		
	
}


	
}



//Esse faz a conexao com o banco de dados 
