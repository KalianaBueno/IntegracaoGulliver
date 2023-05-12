package br.com.masters3.controllers;

import javax.servlet.RequestDispatcher;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.masters3.dao.DataSource;
import br.com.masters3.dao.UsuarioDAO;
import br.com.masters3.beans.Usuario;


@WebServlet ("/login")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
	
		try {
			
			String pagina = "";
			
			DataSource ds = new DataSource();
			
			
			UsuarioDAO usuarioDao = new UsuarioDAO(ds);
			
			Usuario usuarioFiltro = new Usuario();
			usuarioFiltro.setEmail(request.getParameter("email"));
			usuarioFiltro.setSenha(request.getParameter("senha"));
			
			
			
			Usuario usuarioBD = usuarioDao.read(usuarioFiltro);
			
			if(usuarioBD != null) {
//				Achou no BD
				pagina = "/dados_usuario.jsp";
				request.setAttribute("Usuario", usuarioBD);

			}
			else {
//				Náo achou no BD
				
				request.setAttribute("ErroMSG", "Usuário ou senha inválido");
				pagina = "/erro.jsp";
			}
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
			dispatcher.forward(request,response);
			
			
		}
		catch(Exception ex) {
			System.out.println("Erro LoginServlet.Post: " + ex.getMessage());
		}
		
	}

}
