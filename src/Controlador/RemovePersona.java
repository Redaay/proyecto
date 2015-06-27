package Controlador;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Administrador;

@SuppressWarnings("serial")
public class RemovePersona extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Administrador.class);
			try{
				q.deletePersistentAll();
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
				pm.close();
				resp.sendRedirect("/personas");
			}				
	}
}

