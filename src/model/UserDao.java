package model;

import java.sql.*;

public class UserDao {
	
	public static void register(UserBean user) throws Exception {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "INSERT INTO `usuario`( `nome`, `telefone`, `email`, `senha`) VALUES(?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getNome());
			stmt.setString(2, user.getTelefone());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getSenha());
			stmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
	}
	
	public static void update(int id, UserBean user) throws Exception {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "UPDATE usuario SET  telefone = ?, senha = ? WHERE id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getTelefone());
			stmt.setString(2, user.getSenha());
			stmt.setInt(3, id);
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
	}
	
	public static boolean login(UserBean user) throws Exception {
		int id = 0;
		String nome = null;
		String email = null;
		String senha = null;
		String telefone = null;
		String data_cadastro = null;
		String data_atualizacao = null;
		int situacao = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "SELECT * FROM usuario WHERE  email = ? AND senha = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getSenha());
			ResultSet result = stmt.executeQuery();
			
			
			
			while(result.next()) {
				id = result.getInt("id");
				nome = result.getString("nome");
				email = result.getString("email");
				senha = result.getString("senha");
				telefone = result.getString("telefone");
				situacao = result.getInt("situacao");
				data_cadastro = result.getString("data_cadastro");
				data_atualizacao = result.getString("data_atualizacao");

			}
			
			if(user.getEmail().equalsIgnoreCase(email) && user.getSenha().equals(senha) ) {
				user.setId(id);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				user.setTelefone(telefone);
				user.setSituacao(situacao);
				user.setDataCadastro(data_cadastro);
				user.setDataUp(data_atualizacao);
				
				
				return true;

				
			} else {
				return false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
			
		} finally {
			
			conn.close();
		}
	}
	
	public static boolean validaEmail(String email) throws Exception {
		Connection conn = null;
		String emailbanco = null, sql = null;
		PreparedStatement stmt = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			sql = "SELECT email FROM usuario WHERE  email = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet result = stmt.executeQuery();
			if(result.next()) {
				emailbanco = result.getString("email");
				
				if(!emailbanco.isEmpty()) {
					return false;
				}
			}
			
			
		}catch (Exception e) {
			throw new Exception(e.getMessage());
		}finally {
			conn.close();
		}
		
		return true;
		
	}
	
	
}
