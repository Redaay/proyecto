package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@SuppressWarnings("serial")
public class vista extends HttpServlet {
 protected void processRequest(HttpServletRequest request, 
         HttpServletResponse response)
         throws ServletException, IOException {
 
  response.setContentType("text/html;charset=UTF-8");
  PrintWriter out = response.getWriter();
  try {   
  if(request.getParameter("vista").equals("1")){
     RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
     rd.forward(request, response);
   }else if(request.getParameter("vista").equals("2")){
	     RequestDispatcher rd = getServletContext().getRequestDispatcher("/precios");
	     rd.forward(request, response);
	   }else if(request.getParameter("vista").equals("3")){
		     RequestDispatcher rd = getServletContext().getRequestDispatcher("/platos");
		     rd.forward(request, response);
		   }else if(request.getParameter("vista").equals("4")){
			     RequestDispatcher rd = getServletContext().getRequestDispatcher("/envios.jsp");
			     rd.forward(request, response);
			   }else if(request.getParameter("vista").equals("5")){
				     RequestDispatcher rd = getServletContext().getRequestDispatcher("/pregunta.jsp");
				     rd.forward(request, response);
				   }else if(request.getParameter("vista").equals("6")){
					     RequestDispatcher rd = getServletContext().getRequestDispatcher("/contactos.jsp");
					     rd.forward(request, response);
					   }
  } finally { 
    out.close();
  }
 } 

 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
     processRequest(request, response);
 } 
 
 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
     processRequest(request, response);
 }
 
}

