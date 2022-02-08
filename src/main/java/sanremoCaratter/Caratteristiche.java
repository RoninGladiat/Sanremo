package sanremoCaratter;

public class Caratteristiche {
	
	private String nome;
	private int voto;
	private String addressFolderImg;
	
	public Caratteristiche() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Caratteristiche(String nome, int voto , String addressFolderImg) {
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
	
	public int getVoto() {
		return voto;
	}
	
	public void setVoto(int voto) {
		this.voto = voto;
	}

	public String getAddressFolderImg() {
		return addressFolderImg;
	}

	public void setAddressFolderImg(String addressFolderImg) {
		this.addressFolderImg = addressFolderImg;
	}
	
	
	
	
	
}
