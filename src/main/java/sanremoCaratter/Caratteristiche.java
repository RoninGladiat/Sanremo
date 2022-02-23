package sanremoCaratter;

public class Caratteristiche {
	
	private String nome;
	private String voto;
	private String addressFolderImg;
	private String orario;
	
	public Caratteristiche() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Caratteristiche(String nome, String voto, String addressFolderImg, String orario) {
		super();
		this.nome = nome;
		this.voto = voto;
		this.addressFolderImg = addressFolderImg;
		this.orario = orario;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getVoto() {
		return voto;
	}

	public void setVoto(String voto) {
		this.voto = voto;
	}

	public String getAddressFolderImg() {
		return addressFolderImg;
	}

	public void setAddressFolderImg(String addressFolderImg) {
		this.addressFolderImg = addressFolderImg;
	}

	public String getOrario() {
		return orario;
	}

	public void setOrario(String orario) {
		this.orario = orario;
	}
	
	
	
	
	
}
