package model;

import java.util.Objects;

public class Endereco {
	private String cidade;
	private String bairro;
	private String rua;
	private int numero;
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	@Override
	public String toString() {
		return "Endereco [cidade=" + cidade + ", bairro=" + bairro + ", rua=" + rua + ", numero=" + numero + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(bairro, cidade, numero, rua);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Endereco other = (Endereco) obj;
		return Objects.equals(bairro, other.bairro) && Objects.equals(cidade, other.cidade) && numero == other.numero
				&& Objects.equals(rua, other.rua);
	}
	
	
	

}
