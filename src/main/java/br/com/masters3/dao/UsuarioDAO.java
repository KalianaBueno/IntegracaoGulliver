package br.com.masters3.dao;

import java.sql.PreparedStatement;

import br.com.masters3.beans.Usuario;
import br.com.masters3.beans.Cidade;
import java.sql.ResultSet;


public class UsuarioDAO implements DAO<Usuario> {
	private DataSource dataSource;
	
	public UsuarioDAO(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public DataSource getDataSource() {
		return this.dataSource;
	}

	@Override
	public void create(Usuario object) {
		
	}
//		try {
//			String SQL = "insert into usuario " +
//			"(Nivel, Genero, Email, Senha, Nome, Nascimento, UltimoAcesso, Foto, IdCidade) " +
//			"values (?,?,?,?,?,?,?,?,?,?) ";
//			
//			PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
//			
//			
//			
//			stm.setString(1,object.getNivel());
//			stm.setString(2,object.getGenero());
//			stm.setString(3,object.getEmail());
//			stm.setString(4,object.getSenha());
//			stm.setString(5,object.getNome());
//			
////			LocalDate nascimento = object.getNascimento().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
////			LocalDate ultimoAcesso = object.getUltimoAcesso().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
//
////			stm.setString(6, nascimento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
////			stm.setString(7, ultimoAcesso.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
//			stm.setString(8,object.getFoto());
//			stm.setInt(9,object.getIdCidade());
//			
//			
//			int resultado = stm.executeUpdate();
//			if (resultado != 0)
//				System.out.println("Usuário cadastrado com suacesso!");
//			else
//				System.out.println("Erro ao inserir usuário!");
////				throw new RunTimeException("Erro ao inserir usuário");
//				
//
//			
//			
//		}catch(Exception ex) {
//			System.out.println("Erro no método usarioDao.create " + ex.getMessage());
//		}
//	}
//	
	

	@Override
	public Usuario read(Usuario object) {
		try {
			String SQL = "SELECT * FROM TB_TIN_USUARIO u "
						+ " INNER JOIN TB_TIN_CIDADE c "
						+ " ON u.id_cidade = c.id "
						+ " WHERE u.email = ? AND u.senha = ?";
			
//			PREPARED STATEMENT
			PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
			
			
//			ADICIONANDO OS PARAMETROS NAS ?
			stm.setString(1, object.getEmail());
			stm.setString(2, object.getSenha());
			
			
//			EXECUTAR CONSULTA
			ResultSet rs = stm.executeQuery();
			
			if(rs.next()) {
				Usuario resultado = new Usuario();
				resultado.setId(rs.getInt("ID"));
				resultado.setNivel(rs.getString("NIVEL"));
				resultado.setGenero(rs.getString("GENERO"));
				resultado.setEmail(rs.getString("EMAIL"));
				resultado.setNome(rs.getString("NOME"));
				resultado.setSenha(rs.getString("SENHA"));
				resultado.setFoto(rs.getString("FOTO"));
				
				
				resultado.setNascimento(rs.getDate("NASCIMENTO").toLocalDate());
				resultado.setUltimoAcesso(rs.getDate("ULTIMO_ACESSO").toLocalDate());

				//CIDADE
				Cidade cidade = new Cidade();
				cidade.setId(rs.getInt("ID"));
				cidade.setCidade(rs.getString("CIDADE"));
				cidade.setEstado(rs.getString("ESTADO"));
				cidade.setSiglaEstado(rs.getString("SIGLA_ESTADO"));
				cidade.setPais(rs.getString("PAIS"));
				cidade.setSiglaPais(rs.getString("SIGLA_PAIS"));
				resultado.setCidade(cidade);

				
				return resultado;	
				
			}
			else {
				return null;
			}
			
					
			
		}catch(Exception ex) {
			System.out.println("Erro no método usarioDao.read " + ex.getMessage());
			
			
		}
		return null;
		
		
	}

	@Override
	public void update(Usuario Object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Usuario Object) {
		// TODO Auto-generated method stub
		
	}

	
	
	
	
}
