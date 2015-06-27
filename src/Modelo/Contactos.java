package Modelo;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Contactos{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	Key id;
	@Persistent
	String name;
	@Persistent
	String email;
	@Persistent
	String respuesta;
	
	public Contactos(String n, String c,String r){
		super();
		this.name=n;
		this.email=c;
		this.respuesta=r;
	}
	
	public Key getKey(){ return this.id;}
	public String getName(){ return this.name;}
	public String getEmail(){ return this.email;}
	public String getRespuesta(){ return this.respuesta;}

	
	public void setName(String n){this.name=n;}
	public void setEmail(String c){this.email=c;}
	public void setRespuesta(String r){this.respuesta=r;}


}
