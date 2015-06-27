package Controlador;

import java.io.IOException;

import javax.servlet.http.*;


@SuppressWarnings("serial")
public class Cerrar extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		HttpSession misesion= req.getSession();
		
		misesion.invalidate(); //Cierra la sesion
		resp.sendRedirect("/index.jsp"); 
	}
}
