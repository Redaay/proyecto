package Modelo;

import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Platos{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long id;
	
	@Persistent
	private String name;
	
	@Persistent
	private String descripcion;
	
	@Persistent
	private String precio;
	
	@Persistent
	private String tipo;

	public Platos(String name, String lastname, String email, String color) {
		super();
		this.name = name;
		this.descripcion = lastname;
		this.precio = email;
		this.tipo = color;
	}
	
	public String getId() {
		return Long.toString(id);
	}

	public void setId(String idPersona) {
		Long clave =Long.parseLong(idPersona);
		this.id = clave;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return this.descripcion;
	}

	public void setLastname(String lastname) {
		this.descripcion = lastname;
	}

	public String getEmail() {
		return this.precio;
	}

	public void setEmail(String email) {
		this.precio = email;
	}

	public String getColor() {
		return this.tipo;
	}

	public void setColor(String color) {
		this.tipo = color;
	}

}