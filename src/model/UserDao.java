package model;

import java.sql.*;

public class UserDao {
	
	public static void register(UserBean user) throws Exception {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "INSERT INTO user (nome, telefone, email, senha, tipo) VALUES(?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getNome());
			stmt.setString(2, user.getTelefone());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getSenha());
			stmt.setInt(5, user.getTipo());
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
			sql = "UPDATE user SET  telefone = ?, senha = ? WHERE id = ?";
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
		String dtCad = null;
		String dtAtt = null;
		int tipo = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "SELECT * FROM user WHERE  email = ? AND senha = ?";
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
				tipo = result.getInt("tipo");
				dtCad = result.getString("dtCadastro");
				dtAtt = result.getString("dtAtt");

			}
			
			if(user.getEmail().equalsIgnoreCase(email) && user.getSenha().equals(senha) ) {
				user.setId(id);
				user.setNome(nome);
				user.setEmail(email);
				user.setSenha(senha);
				user.setTelefone(telefone);
				user.setTipo(tipo);
				user.setDataCadastro(dtCad);
				user.setDataUp(dtAtt);
				
				
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
			sql = "SELECT email FROM user WHERE  email = ?";
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
