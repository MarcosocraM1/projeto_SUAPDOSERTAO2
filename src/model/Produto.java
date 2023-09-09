package model;

public class Produto {
	private int id_produto;
	private int qtd_produto;
	private String nome;

	
	public int getId_produto() {
		return id_produto;
	}
	public void setId_produto(int id_produto) {
		this.id_produto = id_produto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getQtd_produto() {
		return qtd_produto;
	}
	public void setQtd_produto(int qtd_produto) {
		this.qtd_produto = qtd_produto;
	}
	@Override
	public String toString() {
		return "Produto [id_produto=" + id_produto + ", nome=" + nome + ", qtd_produto=" + qtd_produto + "]";
	}
	

}
