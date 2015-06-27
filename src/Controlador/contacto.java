package Controlador;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Contactos;

	@SuppressWarnings("serial")
	public class contacto extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			
			//Se capturan 2 parametros enviados
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String comment = req.getParameter("descripcion");

			
			//El Servlet crea un Comentario nuevo y lo hace persistente
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Contactos c = new Contactos(name, email,comment);
			try{
				pm.makePersistent(c);
			}catch(Exception e){
				System.out.println(e);
			}finally{
				//Comprobar
				if( pm.currentTransaction().isActive() ){
					// Error occurred so rollback the transaction
					pm.currentTransaction().rollback();
			    }
				//
				pm.close();
			}
			
		}
	}
