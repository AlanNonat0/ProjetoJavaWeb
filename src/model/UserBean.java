package model;

public class UserBean {
	private int id;
	private String nome;
	private String email;
	private String telefone;
	private String senha;
	private String dataCadastro;
	private String dataUp;
	private int tipo;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(String dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public String getDataUp() {
		return dataUp;
	}
	public void setDataUp(String dataUp) {
		this.dataUp = dataUp;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
