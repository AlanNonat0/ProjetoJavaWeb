package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class CadernoDao {
	
	public List<ReceitaBean> listarCaderno(int id) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "Select `Id`, `criada_por`, `nome`, `descricao`, `categoria`, `ingredientes`, `preparo` FROM receita A inner JOIN caderno_receita B ON A.id = b.id_receita and b.Id_usuario ="+id+";";
			stmt = conn.prepareStatement(sql);
			ResultSet caderno = stmt.executeQuery(sql);
			ReceitaBean receita = new ReceitaBean();
			List<ReceitaBean> receitas = new ArrayList<ReceitaBean>();
			int  tamanho = caderno.getFetchSize();
				while(caderno.next()){
					receita.setId(caderno.getInt("id"));
					receita.setCriador(caderno.getString("criada_por"));
					receita.setNome(caderno.getString("nome"));
					receita.setDescricao(caderno.getString("descricao"));
					receita.setCategoria(caderno.getString("categoria"));
					
					receita.setIngredientes(caderno.getString("ingredientes"));
					receita.setPreparo(caderno.getString("preparo"));
					
					receita.setDescricao(caderno.getString("descricao"));
					
					receitas.add(receita);
					if(tamanho >= tamanho-1 ) {
						receita = new ReceitaBean();
					}
					
					
				} 
			
			

			
			return receitas;
				
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
		
	}
	
	public List<ReceitaBean> buscarReceitaCaderno(int id, String busca, String categor) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "Select `Id`, `criada_por`, `nome`, `descricao`, `categoria`, `ingredientes`, `preparo` FROM receita A inner JOIN caderno_receita B ON A.id = b.id_receita and b.Id_usuario = "+id+" Where A.categoria LIKE '%"+categor+"%' AND A.nome LIKE '%"+busca+"%';";
			stmt = conn.prepareStatement(sql);
			ResultSet caderno = stmt.executeQuery(sql);
			ReceitaBean receita = new ReceitaBean();
			List<ReceitaBean> receitas = new ArrayList<ReceitaBean>();
			int  tamanho = caderno.getFetchSize();
				while(caderno.next()){
					if(tamanho >= tamanho-2 ) {
					receita.setId(caderno.getInt("id"));
					receita.setCriador(caderno.getString("criada_por"));
					receita.setNome(caderno.getString("nome"));
					receita.setDescricao(caderno.getString("descricao"));
					receita.setCategoria(caderno.getString("categoria"));
					
					receita.setIngredientes(caderno.getString("ingredientes"));
					receita.setPreparo(caderno.getString("preparo"));
					
					receita.setDescricao(caderno.getString("descricao"));
					
					receitas.add(receita);
					
						receita = new ReceitaBean();
					}
					
					
				} 
			
			

			
			return receitas;
				
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
		
	}
	
	
	public static void adicionarReceitaCaderno(int idUser, int idReceita) throws Exception {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		String sql = null;
		try {
			conn = ConnectionFactory.getConnection();
			sql = "INSERT INTO caderno_receita (Id_usuario, Id_receita) VALUES (?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, idUser);
			stmt.setInt(2, idReceita);
			stmt.executeUpdate();				
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		} finally {
			
			conn.close();
		}
		
	}

}
