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
}
