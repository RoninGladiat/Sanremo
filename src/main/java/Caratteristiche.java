
public class Caratteristiche {
	
	String nome;
	float voto;
	String addressFolderImg;
	
	public Caratteristiche() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Caratteristiche(String nome, float voto , String addressFolderImg) {
		super();
		this.nome = nome;
		this.voto = voto;
		this.addressFolderImg = addressFolderImg;
	}

	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public float getVoto() {
		return voto;
	}
	
	public void setVoto(float voto) {
		this.voto = voto;
	}

	public String getAddressFolderImg() {
		return addressFolderImg;
	}

	public void setAddressFolderImg(String addressFolderImg) {
		this.addressFolderImg = addressFolderImg;
	}
	
	
	
	
	
}
