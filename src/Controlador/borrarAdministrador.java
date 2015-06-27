package Controlador;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Administrador;



	@SuppressWarnings("serial")
	public class borrarAdministrador extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			
			//Se capturan las personas a eliminar
			String[] elejidos = req.getParameterValues("elegidos");
			
			System.out.println(String.valueOf(elejidos.length+" personas"));
			
			//El Servlet busca a los elejidos a eliminar
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				if( req.getParameterValues("elegidos")!=null )
					for(int i=0;i<elejidos.length;i++){
						pm.deletePersistent(pm.getObjectById(Administrador.class, Long.parseLong(elejidos[i])));
					}				
			}catch(Exception e){
				System.out.println(e);
			}finally{
				//Comprobar
				if( pm.currentTransaction().isActive() ){
					// Error occurred so rollback the transaction
					pm.currentTransaction().rollback();
			    }
				//
				//Se consultan todas las Personas
				final Query q = pm.newQuery(Administrador.class);
				q.setOrdering("id descending");
				try{
					@SuppressWarnings("unchecked")
					List<Administrador> personas = (List<Administrador>) q.execute();
					/*
					 * Comunicación Servlet-JSP
					 * Primero se crea el atributo 'personas'
					 * Luego llama al JSP ubicado en la carpeta WEB-INF
					 * Finalmente envia los objetos 'req y resp. 'req' tiene el atributo nuevo
					 * */
					req.setAttribute("personas", personas);
					req.setAttribute("formPersona", false);
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/listaPersonas.jsp");
					rd.forward(req, resp);
					/*
					 * 
					 * */
				}catch(Exception e){
					System.out.println(e);
				}finally{
					//Comprobar
					if( pm.currentTransaction().isActive() ){
						// Error occurred so rollback the transaction
						pm.currentTransaction().rollback();
				    }
					//
					q.closeAll();
				}
				pm.close();
			}
			
	}

}