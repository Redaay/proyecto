package Modelo;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Comentario{
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	Key id;
	@Persistent
	String name;
	@Persistent
	String comment;
	@Persistent
	String respuesta;
	
	public Comentario(String n, String c,String r){
		super();
		this.name=n;
		this.comment=c;
		this.respuesta=r;
	}
	
	public Key getKey(){ return this.id;}
	public String getName(){ return this.name;}
	public String getComment(){ return this.comment;}
	public String getRespuesta(){ return this.respuesta;}

	
	public void setName(String n){this.name=n;}
	public void setComment(String c){this.comment=c;}
	public void setRespuesta(String r){this.respuesta=r;}


}
