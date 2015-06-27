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

import Modelo.Comentario;

	@SuppressWarnings("serial")
	public class ListaComentarios extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			//resp.setContentType("text/plain");
			
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Comentario.class);
					
				//q.setOrdering("id descending");
				//q.setRange(0, 10);			 
				try{
					@SuppressWarnings("unchecked")
					List<Comentario> comentarios = (List<Comentario>) q.execute();
					req.setAttribute("comentarios", comentarios);
					RequestDispatcher rd = req.getRequestDispatcher("/preguntas.jsp");
					rd.forward(req, resp);
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
				}
						
		}
	}

	