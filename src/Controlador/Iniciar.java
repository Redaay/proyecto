package Controlador;

import java.io.IOException;

import javax.servlet.http.*;


@SuppressWarnings("serial")
public class Iniciar extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		String name = "";
		name=req.getParameter("name");
		String color = req.getParameter("color");
		req.getSession().setAttribute("name",name); 
		req.getSession().setAttribute("color",color); 
		req.getSession().setAttribute("e", "false");
		HttpSession misesion;
		if(name.equals("admin") && color.equals("contrasena")){
			misesion = req.getSession(true);
		misesion.setAttribute("name", name);
		req.getSession().setAttribute("e", "true");
		misesion.setAttribute("e", "true");
		}
		resp.sendRedirect("/index.jsp"); 
		}
}
