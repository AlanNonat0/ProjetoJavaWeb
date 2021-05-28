package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class ReceitaDao {
	
	public static int inserirReceita(ReceitaBean receita) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		
		try {
			conn = ConnectionFactory.getConnection();
			sql = "INSERT INTO `receita`(`criada_por`, `nome`, `descricao`, `categoria`, `ingredientes`, `preparo`) VALUES (?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, receita.getCriador());
			stmt.setString(2, receita.getNome());
			stmt.setString(3, receita.getDescricao());
			stmt.setString(4, receita.getCategoria());
			stmt.setString(5, receita.getIngredientes());
			stmt.setString(6, receita.getPreparo());
			
			
			if (stmt.executeUpdate() > 0) {
			     ResultSet rs = stmt.getGeneratedKeys();
			     if (rs.next()) {
			        return rs.getInt(1);
			     }
			}
			return 0;
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
	}
	
	public ReceitaBean buscarReceita(int id) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "Select `Id`, `criada_por`, `nome`, `descricao`, `categoria`, `ingredientes`, `preparo` FROM receita WHERE Id = "+id+";";
			stmt = conn.prepareStatement(sql);
			ResultSet caderno = stmt.executeQuery(sql);
			ReceitaBean receita = new ReceitaBean();
			
				while(caderno.next()){
				
					receita.setId(caderno.getInt("id"));
					receita.setCriador(caderno.getString("criada_por"));
					receita.setNome(caderno.getString("nome"));
					receita.setDescricao(caderno.getString("descricao"));
					receita.setCategoria(caderno.getString("categoria"));	
					receita.setIngredientes(caderno.getString("ingredientes"));
					receita.setPreparo(caderno.getString("preparo"));
					receita.setDescricao(caderno.getString("descricao"));
					
				} 
			
			

			
			return receita;
				
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
		
	}
	

}
