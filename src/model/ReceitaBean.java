package model;

public class ReceitaBean {
	private int id;
	private String criador;
	private String nome;
	private String descricao;
	private String categoria;
	private String ingredientes;
	private String preparo;
	
	
	
	//getters & setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCriador() {
		return criador;
	}
	public void setCriador(String criador) {
		this.criador = criador;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getIngredientes() {
		return ingredientes;
	}
	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}
	public String getPreparo() {
		return preparo;
	}
	public void setPreparo(String preparo) {
		this.preparo = preparo;
	}
	
	
}
